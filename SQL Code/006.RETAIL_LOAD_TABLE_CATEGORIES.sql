CREATE OR ALTER   PROC [retail_stg].[RETAIL_LOAD_TABLE_CATEGORIES]
@PIPELINE_ID INT
AS
BEGIN

    CREATE TABLE retail_stg.Delete_Old_Records 
    (
      Id BIGINT,
      insert_batch_id BIGINT
    );

    BEGIN TRANSACTION;
    BEGIN TRY


        /*
            Keep the records from the final table that exists on the stg. That means these records have been updated.
        */
        INSERT 
          INTO retail_stg.Delete_Old_Records 
        SELECT tgt.category_id	
                , tgt.insert_batch_id	
          FROM [retail].[dim_categories] tgt 
         INNER 
          JOIN [retail_stg].[categories] src
            ON src.category_id = tgt.category_id
        ;

        /*
            Deleting the records from the final table that exists on the stg. That means these records have been updated.
        */
        DELETE tgt
          FROM [retail].[dim_categories] tgt 
         INNER 
          JOIN [retail_stg].[categories] src
            ON src.category_id = tgt.category_id
        ;

        /*
           Updating the records of the stg table (update_batch_id, insert_batch_id) before u procceed to the insert stm. 
           These records exist on the final table, that means that have been updated, new data came in. 
           So keep the first in insert_batch_id and update the update_batch_id.
        */
        UPDATE tgt
           SET tgt.update_batch_id = tgt.insert_batch_id
                ,tgt.insert_batch_id = src.insert_batch_id
          FROM [retail_stg].[categories] tgt
         INNER 
          JOIN retail_stg.Delete_Old_Records src
            ON src.Id = tgt.category_id
        ; 


        /*
           Insert all the new & updated records to the final table.
        */
        INSERT 
          INTO [retail].[dim_categories]
        SELECT * 
          FROM [retail_stg].[categories]
        ;  

        
        /*
           Now we have to close the ETL process and updated the configuration table retail.DIM_PPL_RUN_PARAMS.
        */
        UPDATE tgt
        SET  tgt.ETL_START_FROM = '1900-01-01 00:00:00.000000'
        FROM retail.DIM_PPL_RUN_PARAMS tgt 
        WHERE 1=1 
        AND PIPELINE_ID = @PIPELINE_ID 
        AND ACTIVE = '1' 
        ;

        DROP TABLE retail_stg.Delete_Old_Records;

    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH    

END

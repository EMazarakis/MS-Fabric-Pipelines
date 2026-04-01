----------------------------------------------
-- Config record for the 'PPL_DIM_CATEGORIES'
----------------------------------------------
INSERT INTO retail.DIM_PPL_RUN_PARAMS 
(    PIPELINE_ID                 
    , PIPELINE_NAME               
    , PIPELINE_DESCR            
    , SOURCE_BUSINESS_GROUP       
    , SOURCE_DB                  
    , SOURCE_SCHEMA               
    , SOURCE_TABLE                
    , DESTINATION_BUSINESS_GROUP  
    , DESTINATION_DB          
    , DESTINATION_STG_SCHEMA     
    , DESTINATION_STG_TABLE      
    , DESTINATION_SCHEMA         
    , DESTINATION_TABLE          
    , LAKEHOUSE_FOLDER           
    , LAKEHOUSE_FILETYPE         
    , ENVIRONMENT                 
    , ETL_START_FROM              
    , ETL_END_TO                 
    , ACTIVE                    
)
VALUES
( 
1000
, 'PPL_DIM_CATEGORIES'
, 'Load data for Retail Dim Categories'
, 'Retail'
, 'PostgreSQL'
, 'Retail'
, 'categories'
, 'Retail'
, 'Fabric Warehouse'
, 'retail_stg'
, 'categories'
, 'retail'
, 'dim_categories'
, 'Retail/Categories/'
, 'parquet'
, 'Production'
, '1900-01-01'  
, '2999-01-01'
, '1'
);

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
----------------------------------------------
-- Config record for the 'PPL_DIM_ORDERS'
----------------------------------------------

SELECT * FROM retail.DIM_PPL_RUN_PARAMS;

INSERT INTO retail.DIM_PPL_RUN_PARAMS 
(    PIPELINE_ID                 
    , PIPELINE_NAME               
    , PIPELINE_DESCR            
    , SOURCE_BUSINESS_GROUP       
    , SOURCE_DB                  
    , SOURCE_SCHEMA               
    , SOURCE_TABLE                
    , DESTINATION_BUSINESS_GROUP  
    , DESTINATION_DB          
    , DESTINATION_STG_SCHEMA     
    , DESTINATION_STG_TABLE      
    , DESTINATION_SCHEMA         
    , DESTINATION_TABLE          
    , LAKEHOUSE_FOLDER           
    , LAKEHOUSE_FILETYPE         
    , ENVIRONMENT                 
    , ETL_START_FROM              
    , ETL_END_TO                 
    , ACTIVE                    
)
VALUES
( 
2000
, 'PPL_DIM_ORDERS'
, 'Load data for Retail Dim Orders'
, 'Retail'
, 'PostgreSQL'
, 'Retail'
, 'orders'
, 'Retail'
, 'Fabric Warehouse'
, 'retail_stg'
, 'orders'
, 'retail'
, 'dim_orders'
, 'Retail/Orders/'
, 'parquet'
, 'Production'
, '2021-01-01'  
, '2999-01-01'
, '1'
);

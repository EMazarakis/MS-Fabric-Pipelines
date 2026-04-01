CREATE PROC [retail].[CLOSE_PPL_RUN_FAIL]
@BATCH_ID             BIGINT,
@ERROR_DESCRIPTION    VARCHAR(4096)
AS
BEGIN


UPDATE tgt 
   SET  EXECUTION_ENDS = GETDATE()
        , STATUS_ID = 0   --- This means failure.                    
        , ERROR_DESCRIPTION = @ERROR_DESCRIPTION 
  FROM  retail.DIM_PPL_LOG tgt
 WHERE BATCH_ID = @BATCH_ID
;     

END      
CREATE PROC [retail].[CLOSE_PPL_RUN_SUCCESS]
@BATCH_ID             BIGINT,
@DATA_READ_BYTES      BIGINT,
@DATA_WRITTEN_BYTES    BIGINT,
@ROWS_READ             BIGINT,
@ROWS_WRITTEN          BIGINT,
@THROUGHPUT_KBps    DECIMAL(32,8)
AS
BEGIN


UPDATE tgt 
   SET  EXECUTION_ENDS       = GETDATE()
        , STATUS_ID           = 1 
        , DATA_READ_BYTES     = @DATA_READ_BYTES     
        , DATA_WRITTEN_BYTES  = @DATA_WRITTEN_BYTES    
        , ROWS_READ           = @ROWS_READ             
        , ROWS_WRITTEN        = @ROWS_WRITTEN          
        , THROUGHPUT_KBps     = @THROUGHPUT_KBps
        , ERROR_DESCRIPTION   = NULL
  FROM retail.DIM_PPL_LOG tgt      
 WHERE BATCH_ID = @BATCH_ID
;     

END      

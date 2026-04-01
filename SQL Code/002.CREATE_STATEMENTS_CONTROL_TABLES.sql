CREATE TABLE retail.DIM_PPL_RUN_PARAMS
(
    PIPELINE_ID                 INT NOT NULL,
    PIPELINE_NAME               VARCHAR(256) NULL,
    PIPELINE_DESCR              VARCHAR(256) NULL,
    SOURCE_BUSINESS_GROUP       VARCHAR(256) NULL,
    SOURCE_DB                   VARCHAR(256) NULL,
    SOURCE_SCHEMA               VARCHAR(256) NULL,
    SOURCE_TABLE                VARCHAR(256) NULL,
    DESTINATION_BUSINESS_GROUP  VARCHAR(256) NULL,
    DESTINATION_DB              VARCHAR(256) NULL,
    DESTINATION_STG_SCHEMA      VARCHAR(256) NULL,
    DESTINATION_STG_TABLE       VARCHAR(256) NULL,
    DESTINATION_SCHEMA          VARCHAR(256) NULL,
    DESTINATION_TABLE           VARCHAR(256) NULL,
    LAKEHOUSE_FOLDER            VARCHAR(256) NULL,
    LAKEHOUSE_FILETYPE          VARCHAR(256) NULL,
    ENVIRONMENT                 VARCHAR(256) NULL,
    ETL_START_FROM              DATETIME2(6) NULL,
    ETL_END_TO                  DATETIME2(6) NULL,
    ACTIVE                      VARCHAR(10) NULL
);


-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
CREATE TABLE retail.DIM_PPL_LOG
(
    BATCH_ID    BIGINT IDENTITY NOT NULL,  ---- 
    PIPELINE_ID                  INT NOT NULL,
    EXECUTION_ID                 VARCHAR(256) NULL,
    VERSION                      VARCHAR(256) NULL,
    HOST_NAME                    VARCHAR(256) NOT NULL,
    PIPELINE_NAME                VARCHAR(256) NOT NULL,
    ENVIRONMENT                  VARCHAR(256) NOT NULL, 
    AD_HOC_IND                   INT NOT NULL, 
    ETL_STARTS_FROM              DATETIME2(6) NOT NULL,
    ETL_ENDS_TO                  DATETIME2(6) NOT NULL,
    EXECUTION_STARTS             DATETIME2(6) NULL,
    EXECUTION_ENDS               DATETIME2(6) NULL,
    STATUS_ID                    INT NULL,
    ERROR_DESCRIPTION            VARCHAR(4096) NULL,
    DATA_READ_BYTES              BIGINT NULL,           --- This is taken from the Copy Activity. The actual amount of data read from the source. 
    DATA_WRITTEN_BYTES           BIGINT NULL,           --- This is taken from the Copy Activity. The actual mount of data written/committed to the sink.
    ROWS_READ                    BIGINT NULL,           --- This is taken from the Copy Activity. Number of rows read from the source.
    ROWS_WRITTEN                 BIGINT NULL,           --- This is taken from the Copy Activity. Number of rows copied to sink.
    THROUGHPUT_KBps              DECIMAL(32,8) NULL     --- This is taken from the Copy Activity. Rate of data transfer, calculated by dataRead divided by copyDuration.
);



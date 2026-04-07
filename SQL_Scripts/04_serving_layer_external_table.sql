-- USE olist;

-- CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'd8TySvmWr4rPBUk';

-- CREATE DATABASE SCOPED CREDENTIAL ishwariadmin 
-- WITH IDENTITY = 'Managed Identity';

-- SELECT * 
-- FROM sys.database_credentials;

USE olist;


-- Create external data source (use your real storage name)
CREATE EXTERNAL DATA SOURCE goldlayer 
WITH (
    LOCATION = 'https://olistdatastoragebyme.dfs.core.windows.net/olistdata/gold/',
    CREDENTIAL = ishwariadmin
);
SELECT * FROM sys.external_data_sources;

-- Create file format (run once)
CREATE EXTERNAL FILE FORMAT extfileformat 
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);


-- Create external table (Gold serving layer)
CREATE EXTERNAL TABLE gold.finaltable
WITH (
    LOCATION = 'Serving',
    DATA_SOURCE = goldlayer,
    FILE_FORMAT = extfileformat
)
AS
SELECT * FROM gold.final2;
CREATE OR ALTER VIEW gold.final 
AS 
SELECT *
FROM OPENROWSET(
        BULK 'https://olistdatastoragebyme.dfs.core.windows.net/olistdata/silver/*.parquet',
        FORMAT = 'PARQUET'
) AS result1;

SELECT * FROM gold.final;
CREATE OR ALTER VIEW gold.final2
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://olistdatastoragebyme.dfs.core.windows.net/olistdata/silver/*.parquet',
    FORMAT = 'PARQUET'
) AS result2
WHERE order_status = 'delivered';

SELECT * FROM gold.final2;
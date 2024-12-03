CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'sqlpassword23%'

CREATE DATABASE SCOPED CREDENTIAL cred_advwrks
WITH
IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver',
    CREDENTIAL = cred_advwrks
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://storagedatalakeadvwrks23.blob.core.windows.net/gold',
    CREDENTIAL = cred_advwrks
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold.sales

CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold.calendar

CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold.customers

CREATE EXTERNAL TABLE gold.extproductcategory
WITH
(
    LOCATION = 'extproductcategory',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold.product_categories

CREATE EXTERNAL TABLE gold.extproductsubcategory
WITH
(
    LOCATION = 'extproductsubcategory',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold.product_subcategories

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold.products

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold."returns"

CREATE EXTERNAL TABLE gold.extterritory
WITH
(
    LOCATION = 'extterritory',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS
SELECT * FROM gold.territories
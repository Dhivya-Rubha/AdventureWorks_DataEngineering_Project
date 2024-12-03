CREATE SCHEMA gold

CREATE VIEW gold.calendar
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    ) AS query1
)

CREATE VIEW gold.customers
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) AS query1
)

CREATE VIEW gold.product_categories
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT = 'PARQUET'
    ) AS query1
)

CREATE VIEW gold.product_subcategories
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
        FORMAT = 'PARQUET'
    ) AS query1
)

CREATE VIEW gold.products
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) AS query1
)

CREATE VIEW gold."returns"
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) AS query1
)

CREATE VIEW gold.sales
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) AS query1
)

CREATE VIEW gold.territories
AS
(
    SELECT * FROM 
    OPENROWSET (
        BULK 'https://storagedatalakeadvwrks23.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) AS query1
)
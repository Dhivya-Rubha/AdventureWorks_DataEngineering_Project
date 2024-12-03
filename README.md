****Adventure Works Project****

**Overview**
This project showcases a complete end-to-end data pipeline implementation using Microsoft Azure services for the Adventure Works dataset. The objective is to ingest, process, transform, and visualize data effectively to derive meaningful business insights.

**Architecture**
The solution follows the Medallion Architecture pattern:

*Bronze Layer*: Raw data ingestion.

*Silver Layer*: Business-level transformations.

*Gold Layer*: Finalized data for reporting and analytics.

**Tools and Technologies**
*Azure Data Factory (ADF)*: Used for data ingestion and orchestration.

*Azure Data Lake Storage Gen2 (ADLS Gen2)*: Centralized data storage with medallion architecture.

*Databricks*: Used for data transformation and preparation.

*Azure Synapse Analytics*: Serves as the Data Warehouse for creating external tables.

*Power BI*: For reporting and visualization.

**Workflow**

**1. Data Ingestion**
Source: Excel files stored in GitHub.
Process:
Azure Data Factory (ADF) is configured to copy data from GitHub to ADLS Gen2 using a Copy Activity.
A ForEach Activity iterates over multiple files to streamline the ingestion process.
Output: Raw data is stored in the Bronze Layer in ADLS Gen2.

**2. Data Transformation**
Tool: Databricks.
Process:
Transformations are applied to clean and standardize the data.
Business-level transformations are performed to derive intermediate datasets.
Output: Transformed data is saved to the Silver Layer in ADLS Gen2.

**3. Data Warehousing**
Tool: Azure Synapse Analytics.
Process:
External tables are created in Synapse Analytics by linking with the Gold Layer in ADLS Gen2.
Output: The Gold Layer acts as a curated and ready-to-consume dataset for reporting purposes.

**4. Data Visualization**
Tool: Power BI.
Process:
Data from the Synapse Analytics Gold Layer is visualized in Power BI to generate actionable business insights.
Output: Interactive reports and dashboards.

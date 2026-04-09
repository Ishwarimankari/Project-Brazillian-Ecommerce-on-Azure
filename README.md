Azure End-to-End Data Engineering Project | Olist E-Commerce Dataset

# This project demonstrates an end-to-end Data Engineering pipeline built on Microsoft Azure. It processes raw e-commerce data from ingestion to analytics-ready datasets, following modern data architecture practices.

The project uses the Medallion Architecture, consisting of three layers:

Bronze (Raw Data) – stores unprocessed source data.
Silver (Cleaned Data) – stores transformed and structured data for easier analysis.
Gold (Business-Ready Data) – stores analytics-ready datasets for reporting and decision-making.

The main goal of this project was to gain hands-on experience with Azure data services and understand how real-world data pipelines operate.

Pipeline Workflow

The data pipeline follows this sequence:

Data Source – Raw data ingested from GitHub or HTTP datasets.
Bronze Layer – Data is stored in Azure Data Lake Storage Gen2 without modification.
Data Transformation – Data is cleaned, structured, and converted to Parquet format for better performance.
Silver Layer – Cleaned and structured data is stored for analytics.
Gold Layer – Analytics-ready datasets are created using Azure Synapse Analytics.
Analytics – Business-ready data can now be queried and used for reporting or visualization.
Technologies Used
Microsoft Azure
Azure Data Lake Storage Gen2
Azure Synapse Analytics (Serverless SQL Pool)
Parquet File Format
ETL Concepts and Data Pipelines
GitHub
Data Layers

Bronze Layer (Raw Data):

Stores original data from the source without changes.
Purpose: maintain data traceability and allow reprocessing if needed.

Silver Layer (Cleaned Data):

Data is filtered, cleaned, and transformed.
Data type corrections, missing value handling, and column selection are applied.
Purpose: structured and optimized datasets ready for analytics.

Gold Layer (Business-Ready Data):

Azure Synapse Serverless SQL Pool is used to create analytics-ready datasets.
Purpose: provide clean, structured data for reporting, dashboards, and business insights.

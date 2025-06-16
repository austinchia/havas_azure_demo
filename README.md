# Azure + Power BI Client Billing Demo

This repository contains the resources for an end-to-end demo project that showcases a data pipeline and reporting solution using Azure and Power BI. The solution simulates a financial billing scenario.

For a full summary of the project, go to the [Presentation Deck](https://github.com/austinchia/havas_azure_demo/tree/5459cbf151671aa1fd6499ceb97cbb51ebb7f2df/Presentation%20Deck) folder.

## Architecture

**Data Flow:**  
![dataflow](https://github.com/user-attachments/assets/80688ab4-c024-49a8-bb47-10db13b74e4e)
Azure Blob Storage → Azure Data Factory → Azure SQL Database → Power BI

## Contents

- `transactions.csv`, `clients.csv`, `channels.csv`: Mock datasets for ingestion
- `setup_tables.sql`: SQL script to create normalized tables in Azure SQL Database
- `Azure_PowerBI_Demo_Summary_Deck.pptx`: Summary presentation explaining the project

## Deployments Done in Project

1. **Uploaded Data to Azure Blob Storage**
![uploading datasets to Azure Blob storage container](https://github.com/user-attachments/assets/19a43017-1441-49ad-be4e-8f935c2646d4)
   - Created a container (e.g., `billing-data`)
   - Uploaded the CSV files

3. **Created Tables in Azure SQL**
![creating table in Azure SQL database](https://github.com/user-attachments/assets/bbcfcede-38e5-42e9-b713-09b8db510314)
   - Ran `setup_tables.sql` using Azure SQL Editor in the portal

4. **Configured Azure Data Factory**
![creating linked service for Azure Blob storage](https://github.com/user-attachments/assets/ce5af8d5-737d-43ed-80b2-e65a9be17508)
   - Created linked services for Blob Storage and Azure SQL Database
   - Built pipelines to copy data from Blob to SQL tables

6. **Connected to Power BI**
![creating data model in Power BI](https://github.com/user-attachments/assets/6b9e236d-e9b3-4166-b389-5e5c3a7be575)
   - Loaded the SQL tables and model relationships
   - Cleaned data using Power Query
   - Built KPI visuals, bar charts, and slicers based on the mock billing data

## Power BI Dashboard Result
![billing summary dashboard](https://github.com/user-attachments/assets/b82e7001-db82-4b79-9740-39f9adec01bf)

## Dashboard Features

- KPI Cards: Collected Billing Amount, Average Transaction, Transactions, Clients
- Tables: Payments Breakdown by Channel and Client
- Bar chart: Payments per month
- Filters by Payment Method

## Scalability Suggestions

- Add campaign, ad performance, or ROAS data
- Schedule ADF triggers for automation
- Switch to DirectQuery for near real-time dashboards

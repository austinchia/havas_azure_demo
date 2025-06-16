# Azure + Power BI Client Billing Demo

This repository contains the resources for an end-to-end demo project that showcases a data pipeline and reporting solution using Azure and Power BI. The solution simulates a financial billing scenario.

## Architecture

**Data Flow:**  
Azure Blob Storage → Azure Data Factory → Azure SQL Database → Power BI

## Contents

- `transactions.csv`, `clients.csv`, `channels.csv`: Mock datasets for ingestion
- `setup_tables.sql`: SQL script to create normalized tables in Azure SQL Database
- `Azure_PowerBI_Demo_Summary_Deck.pptx`: Summary presentation explaining the project

## Deployments Done in Project

1. **Uploaded Data to Azure Blob Storage**
   - Created a container (e.g., `billing-data`)
   - Uploaded the CSV files

2. **Created Tables in Azure SQL**
   - Ran `setup_tables.sql` using Azure SQL Editor in the portal

3. **Configured Azure Data Factory**
   - Created linked services for Blob Storage and Azure SQL Database
   - Built pipelines to copy data from Blob to SQL tables

4. **Connected to Power BI**
   - Loaded the SQL tables and model relationships
   - Cleaned data using Power Query
   - Built KPI visuals, bar charts, and slicers based on the mock billing data

## Power BI Dashboard Result

## Dashboard Features

- KPI Cards: Collected Billing Amount, Average Transaction, Transactions, Clients
- Tables: Payments Breakdown by Channel and Client
- Bar chart: Payments per month
- Filters by Payment Method

## Scalability Suggestions

- Add campaign, ad performance, or ROAS data
- Schedule ADF triggers for automation
- Switch to DirectQuery for near real-time dashboards
# Sales Forecasting Application

## Overview
This project involves creating a basic Sales forecasting application using historical data provided in an Excel file. The data is imported into a SQL Server database, normalized, and made ready for further processing.

## Technologies Used
- SQL Server
- SSMS (SQL Server Management Studio)
- Excel

## Steps to Import and Normalize Data

1. **Inspect and Clean Data in Excel:**
   - Open the Excel file and review the `Orders`, `Products`, and `OrderReturns` sheets.
   - Ensure there are no duplicates or blank values.
   - Save the cleaned data in a new Excel file.

2. **Set Up SQL Server Database:**
   - Create a new database named `SalesForecasting`.

3. **Create Tables:**
   - Run `01_CreateTables.sql` script to create the `Orders`, `Products`, and `OrderReturns` tables.
   - Create related tables like `Customers`, `ShipModes`, `Segments`, etc.

4. **Import Data into SQL Server:**
   - Use the SQL Server Import and Export Wizard to import data from the Excel file into the respective tables.

5. **Normalize Data:**
   - Run `02_InsertData.sql` script to populate related tables with unique values.
   - Run `03_NormalizeData.sql` script to update the `Orders` table to use foreign keys and remove redundant columns.

## SQL Scripts
- The SQL scripts for creating tables and importing data are located in the `/SQLScripts` directory.

## How to Run
1. Clone the repository.
2. Open SQL Server Management Studio (SSMS).
3. Run the SQL scripts in the `/SQLScripts` directory to set up the database and import data.

## Note
- Ensure that the Excel file is clean and contains no duplicates or blank values before importing.
- The example provided uses sample data for illustrative purposes.

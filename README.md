# ETL Pipeline Development

## Overview
This project demonstrates the creation of an automated ETL (Extract, Transform, Load) pipeline using R and SQL. The pipeline processes healthcare data by extracting relevant records from a database, transforming them for analytical purposes, and then loading the cleaned data back into the database.

## Features
- **Data Extraction**: Extracting specific patient records using SQL queries directly from a SQLite database.
- **Data Transformation**: Cleaning and transforming data within R, including calculating BMI and categorizing age groups.
- **Data Loading**: Using SQL to insert transformed data back into the SQLite database and creating indices for faster queries.

## Tech Stack
- **Programming Language**: R, SQL
- **Libraries**: `DBI`, `RSQLite`, `dplyr`, `tidyr`
- **Database**: SQLite
- **Data Source**: `patient_records.csv` - A synthetic dataset representing patient records.

## Project Structure
- **data_extraction.R**: Script for extracting data using SQL queries.
- **data_transformation.R**: Script for cleaning, transforming, and engineering features.
- **data_load.R**: Script for loading transformed data back into the database using SQL.
- **patient_records.csv**: The dataset used for extraction.

## How to Run
1. Clone the repository.
2. Ensure all R dependencies are installed (`DBI`, `RSQLite`, `dplyr`, `tidyr`).
3. Run `data_extraction.R` to extract data from the database using SQL.
4. Run `data_transformation.R` to transform and engineer features.
5. Run `data_load.R` to load the transformed data back into the SQLite database with SQL.

## Results
The ETL pipeline automates the data processing workflow, ensuring clean and well-structured data is available for analysis. SQL queries are used for both extracting and loading data, demonstrating integration between R and SQL.

## Future Work
- Expand the pipeline to handle larger datasets with more complex transformations.
- Implement robust error handling and logging for the ETL process.
- Explore using cloud-based SQL databases for scalability.

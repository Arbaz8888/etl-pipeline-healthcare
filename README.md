# ETL Pipeline Development

## Overview
This project showcases the development of an automated ETL (Extract, Transform, Load) pipeline using R and SQL. The pipeline processes healthcare data, transforming it into a format suitable for downstream analysis and reporting.

## Features
- **Data Extraction**: Extracting relevant patient records from a SQL database using complex queries.
- **Data Transformation**: Cleaning, transforming, and feature engineering of the data, including calculating BMI and categorizing age groups.
- **Data Loading**: Loading the transformed data back into the database with indexing for optimized querying.

## Tech Stack
- **Programming Language**: R, SQL
- **Libraries**: `DBI`, `RSQLite`, `dplyr`, `tidyr`
- **Database**: SQLite
- **Data Source**: `patient_records.csv` - A synthetic dataset representing patient records.

## Project Structure
- **data_extraction.R**: Script for extracting data from a SQLite database.
- **data_transformation.R**: Script for cleaning, transforming, and engineering features.
- **data_load.R**: Script for loading the transformed data back into the database.
- **patient_records.csv**: The dataset used for extraction.

## How to Run
1. Clone the repository.
2. Ensure all R dependencies are installed (`DBI`, `RSQLite`, `dplyr`, `tidyr`).
3. Run `data_extraction.R` to extract data from the database.
4. Run `data_transformation.R` to transform and engineer features.
5. Run `data_load.R` to load the transformed data back into the SQLite database.

## Results
The ETL pipeline successfully automates the data processing workflow, ensuring clean and well-structured data is available for analysis. The inclusion of feature engineering enhances the dataset's utility for predictive modeling.

## Future Work
- Extend the pipeline to handle larger datasets with parallel processing.
- Implement error handling and logging for robust ETL processes.
- Explore the use of cloud-based databases (e.g., AWS RDS) for scalability.

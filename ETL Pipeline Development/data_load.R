library(DBI)
library(RSQLite)

# Connect to SQLite database
con <- dbConnect(RSQLite::SQLite(), dbname = "healthcare_data.db")

# Load transformed data
transformed_data <- read.csv('transformed_data.csv')

# Ensure data types match expected database schema
transformed_data$Avg_BMI <- as.numeric(transformed_data$Avg_BMI)
transformed_data$Count <- as.integer(transformed_data$Count)

# Write transformed data back to the SQLite database using SQL
dbWriteTable(con, "transformed_patient_data", transformed_data, overwrite = TRUE, row.names = FALSE)

# Create an index on the AgeGroup column for faster queries
dbExecute(con, "CREATE INDEX idx_agegroup ON transformed_patient_data (AgeGroup)")

# Verify if the data was loaded successfully
if (dbExistsTable(con, "transformed_patient_data")) {
  message("Data loaded successfully into the database!")
}

# Close the database connection
dbDisconnect(con)

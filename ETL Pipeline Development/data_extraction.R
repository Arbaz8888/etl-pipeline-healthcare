library(DBI)
library(RSQLite)

# Connect to SQLite database
con <- dbConnect(RSQLite::SQLite(), dbname = "healthcare_data.db")

# Complex SQL query to extract relevant patient data
query <- "
  SELECT PatientID, Name, Age, Height, Weight, DiagnosisDate, Year
  FROM patient_records
  WHERE Year = 2023 AND Age BETWEEN 40 AND 60
  ORDER BY DiagnosisDate DESC;
"

# Execute the SQL query
extracted_data <- dbGetQuery(con, query)

# Data Integrity Check - Ensure no missing PatientID
if (any(is.na(extracted_data$PatientID))) {
  warning("Some records have missing PatientID!")
}

# Save extracted data
write.csv(extracted_data, 'extracted_data.csv', row.names = FALSE)

# Close database connection
dbDisconnect(con)

library(dplyr)
library(tidyr)

# Load extracted data
extracted_data <- read.csv('extracted_data.csv')

# Feature Engineering - Calculate BMI and Categorize Age Groups
transformed_data <- extracted_data %>%
  mutate(BMI = Weight / (Height/100)^2,
         AgeGroup = case_when(
           Age < 45 ~ "40-44",
           Age < 50 ~ "45-49",
           Age < 55 ~ "50-54",
           TRUE ~ "55-60"
         )) %>%
  group_by(AgeGroup) %>%
  summarise(Avg_BMI = mean(BMI, na.rm = TRUE),
            Count = n()) %>%
  ungroup()

# Handle Missing Values (Impute with Group Median)
transformed_data <- transformed_data %>%
  mutate(Avg_BMI = ifelse(is.na(Avg_BMI), median(Avg_BMI, na.rm = TRUE), Avg_BMI))

# Pivot data for reporting
pivoted_data <- transformed_data %>%
  pivot_wider(names_from = AgeGroup, values_from = c(Avg_BMI, Count))

# Save transformed data
write.csv(pivoted_data, 'transformed_data.csv', row.names = FALSE)

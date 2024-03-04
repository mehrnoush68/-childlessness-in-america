#### Preamble ####
# Purpose: Tests the three data sets
# Author: Mehrnoush Mohammadi
# Date: 2 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites:
  # 01-download_data.R
  # 02-data_cleaning.R


#### Workspace setup ####
library(tidyverse)
library(here)

#### Read in cleaned data sets ####
table_nochild_age <-
  read_csv(
    file = "outputs/data/clean_data_age.csv",
    show_col_types = FALSE
  )

table_nochild_class <-
  read_csv(
    file = "outputs/data/clean_data_class.csv",
    show_col_types = FALSE
  )

table_nochild_degree <-
  read_csv(
    file = "outputs/data/clean_data_degree.csv",
    show_col_types = FALSE
  )

table_nochild_sex <-
  read_csv(
    file = "outputs/data/clean_data_sex.csv",
    show_col_types = FALSE
  )

# Convert the dataset from wide to long format

table_nochild_age_long <- pivot_longer(table_nochild_age, -Age, names_to = "Year", values_to = "Percentage")
table_nochild_class_long <- pivot_longer(table_nochild_class, -`Class Identification`, names_to = "Year", values_to = "Percentage")
table_nochild_degree_long <- pivot_longer(table_nochild_degree, -`Degree`, names_to = "Year", values_to = "Percentage")
table_nochild_sex_long <- pivot_longer(table_nochild_sex, -`Gender`, names_to = "Year", values_to = "Percentage")

# Add year labels

year_labels <- c(1972:2022)

table_nochild_age_long$Year <- factor(table_nochild_age_long$Year, levels = as.numeric(year_labels)) 
table_nochild_class_long$Year <- factor(table_nochild_class_long$Year, levels = as.numeric(year_labels)) 
table_nochild_degree_long$Year <- factor(table_nochild_degree_long$Year, levels = as.numeric(year_labels)) 
table_nochild_sex_long$Year <- factor(table_nochild_sex_long$Year, levels = as.numeric(year_labels)) 

print(table_nochild_age_long)
print(table_nochild_class_long)
print(table_nochild_degree_long)
print(table_nochild_sex_long)


#### Test data ####

# Test 1: Check for missing values in each dataset
missing_values_age <- sum(is.na(table_nochild_age_long))
missing_values_class <- sum(is.na(table_nochild_class_long))
missing_values_degree <- sum(is.na(table_nochild_degree_long))
missing_values_sex <- sum(is.na(table_nochild_sex_long))

print(missing_values_age)
print(missing_values_class)
print(missing_values_degree)
print(missing_values_sex)

# Test 2: Check for duplicate rows in each dataset
duplicates_age <- anyDuplicated(table_nochild_age_long)
duplicates_class <- anyDuplicated(table_nochild_class_long)
duplicates_degree <- anyDuplicated(table_nochild_degree_long)
duplicates_sex <- anyDuplicated(table_nochild_sex_long)

print(duplicates_age)
print(duplicates_class)
print(duplicates_degree)
print(duplicates_sex)

# Test 3: Check that responses range from 1972 to 2022
table_nochild_age_long$Year <- as.numeric(as.character(table_nochild_age_long$Year))
min(table_nochild_age_long$Year) <= 1972
max(table_nochild_age_long$Year) >= 2022
sum(is.na(table_nochild_age_long$Year)) == 0

table_nochild_class_long$Year <- as.numeric(as.character(table_nochild_class_long$Year))
min(table_nochild_class_long$Year) <= 1972
max(table_nochild_class_long$Year) >= 2022
sum(is.na(table_nochild_class_long$Year)) == 0

table_nochild_degree_long$Year <- as.numeric(as.character(table_nochild_degree_long$Year))
min(table_nochild_degree_long$Year) <= 1972
max(table_nochild_degree_long$Year) >= 2022
sum(is.na(table_nochild_degree_long$Year)) == 0

table_nochild_sex_long$Year <- as.numeric(as.character(table_nochild_sex_long$Year))
min(table_nochild_sex_long$Year) <= 1972
max(table_nochild_sex_long$Year) >= 2022
sum(is.na(table_nochild_sex_long$Year)) == 0

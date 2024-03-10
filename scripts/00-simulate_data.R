#### Preamble ####
# Purpose: Simulates data for the data sets no child, age, class identification, degree, and gender
# Author: Mehrnoush Mohammadi
# Date: 2 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# Simulated data for table_nochild_age
set.seed(123)  # For reproducibility
age_groups <- c("18-34", "35-49", "50-64", "65+")
years <- 1972:2022

# Generate random percentages for each age group and year
percentages_age <- matrix(runif(length(age_groups) * length(years), min = 5, max = 70), nrow = length(age_groups))
colnames(percentages_age) <- years
rownames(percentages_age) <- age_groups

print(percentages_age)

# Simulated data for table_nochild_class
class_labels <- c("Lower class", "Working class", "Middle class", "Upper class")

# Generate random percentages for each class and year
percentages_class <- matrix(runif(length(class_labels) * length(years), min = 5, max = 70), nrow = length(class_labels))
colnames(percentages_class) <- years
rownames(percentages_class) <- class_labels

print(percentages_class)

# Simulated data for table_nochild_degree
degree_labels <- c("High school diploma", "Bachelor's degree", "Master's degree", "Doctoral degree")

# Generate random percentages for each degree and year
percentages_degree <- matrix(runif(length(degree_labels) * length(years), min = 5, max = 70), nrow = length(degree_labels))
colnames(percentages_degree) <- years
rownames(percentages_degree) <- degree_labels

print(percentages_degree)

# Simulated data for table_nochild_sex
gender_labels <- c("Male", "Female")

# Generate random percentages for each gender and year
percentages_sex <- matrix(runif(length(gender_labels) * length(years), min = 5, max = 70), nrow = length(gender_labels))
colnames(percentages_sex) <- years
rownames(percentages_sex) <- gender_labels

print(percentages_sex)

# Simulated data for table_nochild_health
health_labels <- c("Excellent", "Good", "Fair", "Poor")

# Generate random percentages for each gender and year
percentages_health <- matrix(runif(length(health_labels) * length(years), min = 5, max = 70), nrow = length(health_labels))
colnames(percentages_health) <- years
rownames(percentages_health) <- health_labels

print(percentages_health)

# Simulated data for table_nochild_marital
marital_labels <- c("Never married", "Married", "Separated", "Divorced", "Widowed")

# Generate random percentages for each gender and year
percentages_marital <- matrix(runif(length(marital_labels) * length(years), min = 5, max = 70), nrow = length(marital_labels))
colnames(percentages_marital) <- years
rownames(percentages_marital) <- marital_labels

print(percentages_marital)


#### Preamble ####
# Purpose: Simulates data for the data sets no child, age, class identification, degree, and gender
# Author: Mehrnoush Mohammadi & Quang Mai
# Date: 14 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####

set.seed(123)  # For reproducibility

# Function to generate simulated data
generate_data <- function(labels, years, n) {
  tibble(
    Category = rep(labels, each = length(years)),
    Year = rep(years, length(labels)),
    Percentage = runif(length(labels) * length(years), min = 5, max = 70),
    Table = n
  )
}

# Create a tibble of label vectors for each table
labels <- list(
  age = c("18-34", "35-49", "50-64", "65+"),
  class = c("Lower class", "Working class", "Middle class", "Upper class"),
  degree = c("High school diploma", "Bachelor's degree", "Master's degree", "Doctoral degree"),
  sex = c("Male", "Female"),
  health = c("Excellent", "Good", "Fair", "Poor"),
  marital = c("Never married", "Married", "Separated", "Divorced", "Widowed")
)

# Generate simulated data for each table using map_dfr
simulated_data <- imap_dfr(labels, ~generate_data(.x, 1972:2022, .y))

# Print the simulated data for each table
#print(simulated_data, n = 1173) this is the whole simulated data
print(simulated_data)



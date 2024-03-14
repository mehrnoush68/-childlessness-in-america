#### Preamble ####
# Purpose: Cleans the raw plane data childlessness in America
# Author: Mehrnoush Mohammadi & Quang Mai
# Date: 2 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: need to have run 01-download_data.R


#### Workspace setup ####
library(tidyverse)
library(magrittr)
library(readr)
library(dplyr)

# List of input files
input_files <- c(
  "nochild_age.csv",
  "nochild_class.csv",
  "nochild_sex.csv",
  "nochild_higestdegree.csv",
  "nochild_health.csv",
  "nochild_marital.csv"
)

# Remove "nochild_" from input file names and create output file names
output_files <- gsub("nochild_", "", input_files)

# Remove "higest" from input file names and create output file names
output_files[input_files == "nochild_higestdegree.csv"] <- "degree.csv"

# List of output files
output_files <- paste0("clean_data_", tools::file_path_sans_ext(output_files), ".csv")



# Loop over input files
for (input_file in input_files) {
  # Read data with show_col_types = FALSE
  data <- read_csv(file.path("inputs/data", input_file), show_col_types = FALSE)
  
  # Clean data
  cleaned_data <- data |>
    mutate(across(-1, ~as.numeric(gsub("\\s*\\(.*\\)", "", .))))

  # Rename 'age' to 'Age' if 'age' exists in the column names
  if (any(colnames(cleaned_data) == "age")) {
    cleaned_data <- cleaned_data |>
      rename(Age = age)
  } 
  # Write cleaned data to output file
  output_file <- output_files[input_files == input_file]
  write_csv(cleaned_data, file.path("outputs/data", output_file))
}


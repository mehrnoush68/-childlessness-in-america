#### Preamble ####
# Purpose: Cleans the raw plane data childlessness in America
# Author: Mehrnoush Mohammadi & Quang Mai
# Date: 2 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: need to have run 01-download_data.R


#### Workspace setup ####
library(tidyverse)

# List of input files
input_files <- c(
  "nochild_age.csv",
  "nochild_class.csv",
  "nochild_sex.csv",
  "nochild_higestdegree.csv",
  "nochild_health.csv",
  "nochild_marital.csv"
)

# Remove "_nochild" from file names
input_files <- gsub("_nochild", "", input_files)

# List of output files
output_files <- paste0("clean_data_", gsub("_nochild", "", tools::file_path_sans_ext(input_files)), ".csv")



# Loop over input files
for (i in seq_along(input_files)) {
  # Read data with show_col_types = FALSE
  data <- read_csv(file.path("inputs/data", input_files[i]), show_col_types = FALSE)
  
  # Clean data
  cleaned_data <- data %>%
    mutate(across(-1, ~as.numeric(gsub("\\s*\\(.*\\)", "", .))))
  
  # Write cleaned data to output file
  output_file <- gsub("_nochild", "", output_files[i])
  write_csv(cleaned_data, file.path("outputs/data", output_file))
}



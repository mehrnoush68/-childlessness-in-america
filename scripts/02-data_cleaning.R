#### Preamble ####
# Purpose: Cleans the raw plane data childlessness in America
# Author: Mehrnoush Mohammadi
# Date: 2 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: need to have run 01-download_data.R


#### Workspace setup ####
library(tidyverse)
library(readr)
library(dplyr)
library(knitr)

#### Load data ####
nochild_age_data <-
  read_csv(
    file = "inputs/data/nochild_age.csv",
    show_col_types = FALSE,
  )
nochild_class_data <-
  read_csv(
    file = "inputs/data/nochild_class.csv",
    show_col_types = FALSE,
  )
nochild_sex_data <-
  read_csv(
    file = "inputs/data/nochild_sex.csv",
    show_col_types = FALSE,
  )
nochild_degree_data <-
  read_csv(
    file = "inputs/data/nochild_higestdegree.csv",
    show_col_types = FALSE,
  )

# Cleaning Data
data_cleaned_age <- nochild_age_data
data_cleaned_class <- nochild_class_data
data_cleaned_sex <- nochild_sex_data
data_cleaned_degree <- nochild_degree_data


# Define a function to clean the data
clean_data_age <- function(x) {
  as.numeric(gsub("\\s*\\(.*\\)", "", x))
}
clean_data_class <- function(x) {
  as.numeric(gsub("\\s*\\(.*\\)", "", x))
}
clean_data_sex <- function(x) {
  as.numeric(gsub("\\s*\\(.*\\)", "", x))
}
clean_data_degree <- function(x) {
  as.numeric(gsub("\\s*\\(.*\\)", "", x))
}

# Clean the data
clean_data_age <- data_cleaned_age |>
  mutate(across(-1, clean_data))

# Rename the 'age' column to 'Age'
clean_data_age <- clean_data_age |>
  rename(Age = age)

clean_data_class <- data_cleaned_class |>
  mutate(across(-1, clean_data))

clean_data_sex <- data_cleaned_sex |>
  mutate(across(-1, clean_data))

clean_data_degree <- data_cleaned_degree |>
  mutate(across(-1, clean_data))


# Save cleaned data
write_csv(
  x = clean_data_age,
  file = "outputs/data/clean_data_age.csv"
)

write_csv(
  x = clean_data_class,
  file = "outputs/data/clean_data_class.csv"
)

write_csv(
  x = clean_data_sex,
  file = "outputs/data/clean_data_sex.csv"
)

write_csv(
  x = clean_data_degree,
  file = "outputs/data/clean_data_degree.csv"
)



#### Preamble ####
# Purpose: Downloads the data from US General Social Survey
# Author: Mehrnoush Mohammadi
# Date: 2 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: Download the raw data from US General Social Survey (https://gssdataexplorer.norc.org/trends)


#### Workspace setup ####
library(tidyverse)

#Note: data is behind sign-in
# data can be accessed at https://gssdataexplorer.norc.org/trends from the US General Social Survey

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
         

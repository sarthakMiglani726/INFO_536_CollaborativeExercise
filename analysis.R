# Global Terrorism Database Collaborative Analysis

# Loading necessary libraries
library(dplyr)
library(ggplot2)

# Loading the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)

# Basic data exploration
glimpse(gtd_data)

# Filtering year column
gtd_year <- gtd_data %>%
  select(iyear) %>%
  filter(!is.na(iyear))  # Removing rows with missing years

# Checking the filtered data
glimpse(gtd_year)




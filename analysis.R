# Global Terrorism Database Collaborative Analysis

# Loading necessary libraries
library(dplyr)
library(ggplot2)

# Loading the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)

# Basic data exploration
glimpse(gtd_data)

# Role 1 (S.R.)
# Filtering year column
gtd_year <- gtd_data %>%
  select(iyear) %>%
  filter(!is.na(iyear))  # Removing rows with missing years

# Checking the filtered data
glimpse(gtd_year)

# Role 2 (S.A.M.)
# Counting the number of attacks per year
attacks_per_year <- gtd_year %>%
  group_by(iyear) %>%
  summarise(attack_count = n())  # Counting occurrences of each year

# Checking the attack data
head(attacks_per_year)

#Role 3 (S.S.R)
  # Creating a bar plot for the number of attacks per year
  ggplot(attacks_per_year, aes(x = iyear, y = attack_count)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Number of Terrorist Attacks Per Year",
       x = "Year",
       y = "Number of Attacks") +
  theme_minimal()

  
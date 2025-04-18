# load_data.R

library(readr)
library(dplyr)

# Load and clean data
data <- read_csv("BRFSS_Caregiver_Subset.csv") %>%
  mutate(
    menthlth = ifelse(menthlth %in% c(88, 99), NA, menthlth),
    addepev3 = ifelse(addepev3 %in% c(7, 9), NA, addepev3),
    medcost1 = ifelse(medcost1 %in% c(7, 9), NA, medcost1),
    primins1 = ifelse(primins1 %in% c(99), NA, primins1)
  )

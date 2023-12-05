library(tidyverse)

# Read in the data.  Do some cleaning/verification
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  select('DATE', 'PRCP', 'SNOW', 'TMAX', 'TMIN') %>%
  drop_na() %>%
  mutate(Date = lubridate::ymd( paste( DATE ) ))

# Changing the name of the PRCP to RAIN
colnames(Flagstaff_Weather)[2] <- 'RAIN'

# Save the data frame to the data/ directory as Flagstaff_Weather.rda
usethis::use_data(Flagstaff_Weather, overwrite=TRUE)

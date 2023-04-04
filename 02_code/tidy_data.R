# cek data

library(tidyverse)
rainfall_data <- read_csv("01_data/rainfall_data.csv")
glimpse(rainfall_data)

library(dplyr)
library(lubridate)

rainfall_data %>% 
  mutate(date=mdy(date))

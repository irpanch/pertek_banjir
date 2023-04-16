# cek data

library(tidyverse)
rainfall_data <- read_csv("01_data/rainfall_data.csv")

library(dplyr)
library(lubridate)

rainfall_data <- rainfall_data %>% 
  filter(rainfall_mm != "-") %>% #hilangkan data yang kosong
  mutate(date=mdy(date)) #ganti tipe kolom menjadi tanggal

View(rainfall_data)

# coba package fasstr
library(fasstr)
rename(rainfall_data,c("Date" = "date", "Value" = "rainfall_mm" ))
rainfall_data$rainfall_mm <- as.numeric(rainfall_data$rainfall_mm)



calc_longterm_daily_stats(rainfall_data)

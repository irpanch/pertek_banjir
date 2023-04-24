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

tidyhydat::hy_version()

calc_longterm_daily_stats(data = flow_data)

plot_flow_data(station_number = "08NM116")

calc_longterm_daily_stats(station_number = "08NM116")
calc_longterm_daily_stats(station_number = c("08NM116", "08NM242"))

plot_flow_data(station_number = c("08NM241", "08NM242"),
               one_plot = TRUE) 

screen_flow_data(station_number = "08NM116")

plot_data_screening(station_number = "08NM116")

plot_missing_dates(station_number = "08NM116")

plot_longterm_daily_stats(station_number = "08NM116", 
                          start_year = 1974,
                          inner_percentiles = c(25,75),
                          outer_percentiles = c(10,90)) 

plot_longterm_monthly_stats(station_number = "08NM116", 
                          start_year = 1974,
                          inner_percentiles = c(25,75),
                          outer_percentiles = c(10,90)) 

plot_monthly_stats(station_number = "08NM116", 
                   start_year = 1974)[1]

plot_daily_stats(station_number = "08NM116", 
                 start_year = 1974) 

plot_daily_stats(station_number = "08NM116", 
                 start_year = 1974,
                 add_year = 2000)

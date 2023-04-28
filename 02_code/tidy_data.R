# cek data

library(tidyverse)
rainfall_data <- read_csv("01_data/rainfall_data.csv")

library(dplyr)
library(lubridate)

rainfall_data <- rainfall_data %>% 
  filter(rainfall_mm != "-") %>% #hilangkan data yang kosong
  mutate(rainfall_mm=as.numeric(rainfall_mm))# %>% 
#mutate(date=mdy(date)) #ganti tipe kolom menjadi tanggal

View(rainfall_data)

sapply(rainfall_data, class) # cek tipe class

rainfall_data <- type.convert(rainfall_data,as.is=T) # convert data sesuai isi

rainfall_data$date <- mdy(rainfall_data$date) #convert tipe kolom menjadi tanggal

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

# coba ganti dengan stasiun yang lain

calc_longterm_daily_stats(data = rainfall_data,
                          dates = date,
                          values = rainfall_mm,
                          groups = station)
plot_daily_stats(data = rainfall_data,
                 dates = date,
                 values = rainfall_mm,
                 groups = station)

# kesimpulan: fasstr hanya bisa dipakai untuk debit, kalau hujan jadi kacau.
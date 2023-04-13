# cek data

library(tidyverse)
rainfall_data <- read_csv("01_data/rainfall_data.csv")

library(dplyr)
library(lubridate)

rainfall_data <- rainfall_data %>% 
  filter(rainfall_mm != "-") %>% #hilangkan data yang kosong
  mutate(date=mdy(date)) #ganti tipe kolom menjadi tanggal

View(rainfall_data)


library(dplyr)
library(lubridate)
library(AnomalyDetection)
library(ggplot2)
library(mlr)

data <- read.csv("Desktop/data.csv")

data <- data %>%
  mutate(date_local = as.POSIXct(date_local))

res <- AnomalyDetectionTs(data, max_anoms=0.02, direction='both', plot = TRUE)
res$plot

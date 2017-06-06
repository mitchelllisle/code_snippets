library(dplyr)
library(lubridate)
library(AnomalyDetection)
library(ggplot2)
library(mlr)

data <- read.csv("https://raw.githubusercontent.com/mitchelllisle/code_snippets/master/machine_learning/misc/anomaly_data/anomaly_data.csv")

data <- data %>%
  mutate(date_local = as.POSIXct(date_local))

res <- AnomalyDetectionTs(data, max_anoms=0.02, direction='both', plot = TRUE)
res$plot

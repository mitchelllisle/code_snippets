library(dplyr)
library(lubridate)
library(AnomalyDetection)
library(mlr)

# Read CSV data with anomaly present in latest day
data <- read.csv("https://raw.githubusercontent.com/mitchelllisle/code_snippets/master/machine_learning/misc/anomaly_data/anomaly_data.csv")

# Convert date field to ymd date, then to POSIXct for anomaly detection algorithm
data <- data %>%
  mutate(date_local = ymd(date_local)) %>%
  mutate(date_local = as.POSIXct(date_local))

# Run anomalyDetection 
res <- AnomalyDetectionTs(data, max_anoms=0.02, direction='both', plot = TRUE)

# Plot Anomalies (if any). Could also print detected anomalies with res$anoms
res$plot

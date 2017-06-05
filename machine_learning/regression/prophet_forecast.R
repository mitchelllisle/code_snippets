library(mlr)
library(prophet)
library(dplyr)

# Read in time series data. Must have row_names of 'ds' for time series and 'y' for data
data <- read.csv(url("https://raw.githubusercontent.com/mitchelllisle/code_snippets/master/machine_learning/regression/data/prophet-data.csv"))

# Do prophet forecast
m <- prophet(data)

# Make data frame of dates in future to forecast
future <- make_future_dataframe(m, periods = 24, freq = "m", include_history = TRUE)

# Do forecast based of previous prophet model
forecast <- predict(m, future)

# Plot forecast
mlr_ribbon(forecast$ds, forecast$yhat, ribbon_lower = forecast$yhat_lower, ribbon_upper = forecast$yhat_upper)

# Plot Original Data
mlr_line(data$ds, data$y)

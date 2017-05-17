# original source: https://github.com/chrisalbon/code_r/blob/master/aggregate-by-week-or-month.r

library(xts)

dates <- seq(as.Date("2017-01-01"), as.Date("2017-06-01"), by = "day")
scores <-rnorm(141)

# zoo is the creator for an S3 class of indexed totally ordered observations which includes irregular time series
zoo <- zoo(scores, dates)

### Aggregation by week, month, median, mean
apply.weekly(zoo, median)   ## per week

apply.monthly(zoo, mean)   ## per month   

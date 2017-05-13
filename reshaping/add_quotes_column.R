# Double quote a single column in a data set
raw_csv$Suburb <- dQuote(raw_csv$Suburb)

# Single quote a column in a data set
raw_csv$Suburb <- sQuote(raw_csv$Suburb)


# Read files matching a pattern in working directory. Then bind them together into one dataset
multiple_csv <- function(pattern){
  do.call(rbind,lapply(list.files(), read.csv))
}

# store multiple_csv output into x where pattern matches any CSV file
x <- multiple_csv("*.csv")

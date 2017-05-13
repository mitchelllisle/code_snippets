library("mongolite")
library("jsonlite")
library("readr")
library("dplyr")

# ToDo, add ability to define a custom query
# query <- paste("{company_type :", dQuote("Brand"), "}")

getMongo <- function (host, db, collection, query){
  con <- mongo(collection = "userList", db = "intercom", url = "mongodb://localhost:27017",verbose = TRUE)
  mongoData <- con$find()
  rm(con)
}

results <- getMongo("mongodb://localhost:27017", "dbname", "collection")


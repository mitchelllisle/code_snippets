# Create a connection to the database
library("RPostgreSQL")
pg = dbDriver("PostgreSQL")

user <- ""
password <- ""
host <- "localhost"
port <- 5432
dbname <- ""
query <- paste("select * from properties limit 1")


# NOTE: This function currently drops, then recreates a table meaning you will lose all data and indexes etc. 
# Future enhancement will be made so this isnt so crude
putPostgres <- function(host, port, user, password, db, table, file) {
  con <- dbConnect(pg, user, pass, host, db, port)
  message("Connected to DB, reading csv data")
  data <- read.csv(file, header = TRUE, sep = ',')
  if (dbExistsTable(con, table)) {
    dbRemoveTable(con, table)
  }
  dbWriteTable(con, table, data, row.names = FALSE)
  message("Data written to Postgres")
}

putPostgres(host, port, users, password, dbname, table, file)



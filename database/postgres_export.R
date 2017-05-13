# Create a connection to the database
library("RPostgreSQL")
pg = dbDriver("PostgreSQL")

getPostgres <- function(user, password, host, port, dbname, query){
  con <- dbConnect(pg, user, password, host, dbname, port)
  query_results <- dbGetQuery(con, query)
  dbDisconnect(con)
  query_results
}

result <- getPostgres("user", "password", "host", port, "dbname", "query")


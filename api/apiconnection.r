library(jsonlite)
library(httr)

# Enter any authentication details here
userid <- ""
secret <- ""
url <- ""

# Saves multiple pages of content to a data frame
for (i in 1:1) {
  req <- GET(paste0(url, i), authenticate(userid, secret, type = "basic"))
  req_df <- data.frame(fromJSON(content(req, type = "text", encoding = "UTF-8"), flatten = TRUE))
  # Here you can select only the columns you need from JSON to the Data Frame
  users <- paste(req_df$COLUMNNAME, sep = ",")
  message("Start: Page ", i)
  print(users)
  message("End: Page ", i)
}

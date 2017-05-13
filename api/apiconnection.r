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
  users <- paste(req_df$users.email, req_df$users.name, req_df$users.custom_attributes.Company, req_df$users.created_at, req_df$users.signed_up, req_df$users.session_count, req_df$users.custom_attributes.Parent.Company, req_df$users.custom_attributes.Company.Type, req_df$users.custom_attributes.BigDatr...Industry, sep = ",")
  message("Start: Page ", i)
  print(users)
  message("End: Page ", i)
}

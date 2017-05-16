library(jsonlite)
library(httr)

# Initialise data.frame()
users <- data.frame()

# Saves multiple pages of content to a data frame
for (i in 1:1) {
  req <- GET(paste0(URL, i), authenticate(USERID, SECRET, type = "basic"))
  req_df <- data.frame(fromJSON(content(req, type = "text", encoding = "UTF-8"), flatten = TRUE))
  
  # Here you can select only the columns you need from JSON to the Data Frame
  users <- rbind(artist_data, select(req_df, topartists.artist.name, topartists.artist.playcount, topartists.artist.mbid))
  message("Start: Page ", i)
  print(users)
  message("End: Page ", i)
}

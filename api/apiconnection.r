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

# MusicBrainz nested JSON structure impelemenation 
musicbrainz_artist <- function(artist_mbid){
  req <- fromJSON("http://musicbrainz.org/ws/2/artist/420ca290-76c5-41af-999e-564d7c71f1a7?inc=&fmt=json", flatten = TRUE)
  data.frame(rbind(req))
}

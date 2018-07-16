# Get data from API and store each page as a new file on s3

for (i in 1:10) {
  req <- GET(paste0(url, i))
  req_df <- data.frame(fromJSON(content(req, type = "text", encoding = "UTF-8"), flatten = TRUE))
  req_df <- select(req_df, toptracks.track.name, toptracks.track.playcount,toptracks.track.artist.name,toptracks.track.artist.url,toptracks.track..attr.rank)
  tmp <- tempfile()
  on.exit(unlink(tmp))
  write.csv(req_df, file = tmp)
  put_object(tmp, object = paste0("blueflagmusic",i,".csv"), bucket = "s3://mitchelllisle/")
  message("Page: ", i)
}

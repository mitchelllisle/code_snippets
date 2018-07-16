# Encode a variable or value for passing to a URL E.g. an API

encoded_artist <- URLencode(artist_mbi)
  req <- GET(paste0("http://musicbrainz.org/ws/2/artist/?query=", encoded_artist, "&fmt=json"))

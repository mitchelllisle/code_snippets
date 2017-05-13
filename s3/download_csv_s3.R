library('aws.s3')


Sys.setenv("AWS_ACCESS_KEY_ID" = "mykey",
           "AWS_SECRET_ACCESS_KEY" = "mysecretkey",
           "AWS_DEFAULT_REGION" = "ap-southeast-2",
           "AWS_SESSION_TOKEN" = "mytoken")

# Get CSV and convert to Table
getCSVObject <- function(AWS_ACCESS_KEY_ID,AWS_SECRET_ACCESS_KEY,AWS_DEFAULT_REGION, object, file_sep, header){
  Sys.setenv("AWS_ACCESS_KEY_ID" = AWS_ACCESS_KEY_ID,"AWS_SECRET_ACCESS_KEY" = AWS_SECRET_ACCESS_KEY,"AWS_DEFAULT_REGION" = AWS_DEFAULT_REGION)
  # Get Object (in this case csv file, from S3). See here for more info on other data types: https://github.com/cloudyr/aws.s3
  object_store <- get_object(object)
  # Convert RAW format get_object outputs and turn it into a character vector
  object_as_char <- rawToChar(object_store)
  # Take character vector and turn it into a table
  tidy_data <- read.table(textConnection(object_as_char), sep = file_sep, header = header)
}

file_data <- getCSVObject("", 
             "", 
             "ap-southeast-2", 
             "s3://objectpath",
             ",",
              TRUE
             )



library('aws.s3')


Sys.setenv("AWS_ACCESS_KEY_ID" = "mykey",
           "AWS_SECRET_ACCESS_KEY" = "mysecretkey",
           "AWS_DEFAULT_REGION" = "ap-southeast-2",
           "AWS_SESSION_TOKEN" = "mytoken")

# Get CSV and convert to Table
mlr_s3_readCSV <- function(s3_file_path){
  read.csv(text = rawToChar(get_object(object = s3_file_path)))
}



library("aws.s3")

# Set ENV to connect to s3
Sys.setenv("AWS_ACCESS_KEY_ID" = "mykey",
           "AWS_SECRET_ACCESS_KEY" = "mysecretkey",
           "AWS_DEFAULT_REGION" = "us-east-1",
           "AWS_SESSION_TOKEN" = "mytoken")
           
# Put local file into s3           
put_object("Downloads/data.csv", object = "data.csv", bucket = "s3://bucket")

# Put variable data to s3
tmp <- tempfile()
on.exit(unlink(tmp))
write.csv(mtcars, file = tmp)
put_object(tmp, object = "data.csv" bucket = "s3://bucket")


# Works with a concatenated list of values (E.g. 'Cat, Dog, Rabbit')

categories <- c("Cat, "Dog")
filter(str_detect(category, paste(categories, collapse="|"))) %>%

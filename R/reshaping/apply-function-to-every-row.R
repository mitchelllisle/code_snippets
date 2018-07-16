# Apply A Function On Every Row Of A Dataframe
# original source: https://github.com/chrisalbon/code_r/blob/master/apply-function-to-every-row.r

# create a simulated dataframe
x <- rnorm(10)
y <- rnorm(10)
df <- data.frame(x,y)

# array to dataframe apply, on df, for each row, apply transform() to create a variable called "max" whose values are the maximum value of x or y (whichever is higher).
adply(df, 1, transform, max = max(x, y))

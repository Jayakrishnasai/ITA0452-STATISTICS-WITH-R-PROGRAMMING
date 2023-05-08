#read csv file
mpg <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/ggplot2/mpg.csv")

# Load the mpg dataset
mpg <- mpg

# i) Find the standard deviation of city miles per gallon
sd_city_mpg <- sd(mpg$cty)

# ii) Find the variance of highway miles per gallon
var_highway_mpg <- var(mpg$hwy)

# Print the results
cat("Standard deviation of city miles per gallon:", sd_city_mpg, "\n")
cat("Variance of highway miles per gallon:", var_highway_mpg, "\n")

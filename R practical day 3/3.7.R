#EXE-07
#Load libraries
library(ggplot2)
library(moments)

#Load the mpg dataset
data(mpg)

# a) Find the skewness of city miles per mileage in the data set mpg
skew <- skewness(mpg$cty / mpg$hwy)
cat("The skewness of city miles per mileage in the mpg dataset is", skew, "\n")

# Create a histogram of city miles per mileage using ggplot
ggplot(mpg, aes(x = cty / hwy)) +
  geom_histogram(bins = 20, fill = "cornflowerblue") +
  ggtitle("City Miles Per Mileage") +
  xlab("City Miles Per Mileage")

# b) Find the kurtosis of city miles per mileage in the data set mpg
kurt <- kurtosis(mpg$cty / mpg$hwy)
cat("The kurtosis of city miles per mileage in the mpg dataset is", kurt, "\n")

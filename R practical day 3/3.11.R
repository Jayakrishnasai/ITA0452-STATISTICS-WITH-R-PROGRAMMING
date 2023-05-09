#EXE-11
# Load the tigerstats package
library(tigerstats)

# Create a contingency table of Status by Test using xtabs()
# Set the working directory to the folder that contains the file
setwd("C:/Users/koppo/OneDrive/Documents/R practical day 3/")
# Read the CSV file into a data frame
mydata <- read.csv("dataframe1.csv")

# View the first few rows of the data frame
head(mydata)

# Use rowPerc() to compute row percentages
rowPerc(mytable, margin = 1)


library(tigerstats)

mydata <- read.csv("C:/Users/koppo/OneDrive/Documents/R practical day 3/dataframe1.csv")

mytable <- xtabs(Status + Test, data = mydata)

colPerc(mytable, margin = 2)
print(mytable)
colnames(mydata)

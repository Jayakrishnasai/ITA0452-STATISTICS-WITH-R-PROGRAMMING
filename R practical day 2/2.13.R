#i)
# Load the Iris dataset
data(iris)

# Find the dimension of the dataset
dim(iris) # [1] 150 5

# Find the structure of the dataset
str(iris)

# Find the summary statistics of the dataset
summary(iris)

# Display the first six rows of the dataset
head(iris)

# Display a boxplot of the dataset
boxplot(iris)

# Display a scatterplot matrix of the dataset
pairs(iris)
# Find the standard deviation of all features
apply(iris[, 1:4], 2, sd)
#ii)
# Find mean and standard deviation of features grouped by three species of Iris flowers
aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = mean)
aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = sd)
#iii)
# Find quantile value of sepal width and length
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)
#iv)
# Create new data frame named iris1 with Sepal.Length.Cate column
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length))
#v)
# Average value of numerical variables by Species and Sepal.Length.Cate
aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = mean)
#vi)
# Average mean value of numerical variables by Species and Sepal.Length.Cate
aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = function(x) mean(x, na.rm = TRUE))
#vii)
# Create Pivot Table based on Species and Sepal.Length.Cate
library(pivottabler)
pt <- PivotTable$new()
pt$addData(iris1)
pt$addColumnDataGroups("Species")
pt$addRowDataGroups("Sepal.Length.Cate")
pt$defineCalculation(calculationName="Mean of Sepal.Length", summariseExpression="mean(Sepal.Length)", format="$%.2f")
pt$defineCalculation(calculationName="Mean of Sepal.Width", summariseExpression="mean(Sepal.Width)", format="$%.2f")
pt$defineCalculation(calculationName="Mean of Petal.Length", summariseExpression="mean(Petal.Length)", format="$%.2f")

# Load the dataframe1
dataframe1 <- read.csv("dataframe1.csv")

# Create a multi-dimensional cross-tabulation of Status, Gender, and Test
table_3d <- xtabs(~ Status + Gender + Test, dataframe1)

# View the resulting table
table_3d

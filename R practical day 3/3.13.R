#EXE-13
# Define the input vector and labels
values <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Create the pie chart
pie(values, labels = labels, main = "city pie-chart")

# Add a legend
legend("topright", labels, cex = 0.8, fill = rainbow(length(values)))

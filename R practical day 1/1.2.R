# Create some objects
a <- 1:10
b <- "hello"
c <- data.frame(x = 1:5, y = letters[1:5])

# List all objects in the current workspace
cat("Objects in memory:\n")
print(ls())

# Get the size of each object
cat("\nSize of each object:\n")
for (obj in ls()) {
  size <- object.size(get(obj)) / 1024 # convert bytes to kilobytes
  cat(obj, ": ", size, "KB\n")
}

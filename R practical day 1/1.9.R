# Function to find factors of a number
get_factors <- function(n) {
  factors <- c()
  
  for (i in 1:n) {
    if (n %% i == 0) {
      factors <- c(factors, i)
    }
  }
  
  return(factors)
}

# Example usage
number <- 36
factors <- get_factors(number)
cat("The factors of", number, "are:", factors, "\n")

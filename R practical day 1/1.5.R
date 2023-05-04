# Define a function to generate the Fibonacci sequence
fibonacci <- function(n) {
  if (n == 0) {
    return(0)
  } else if (n == 1) {
    return(1)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

# Generate the first 10 Fibonacci numbers
fib_nums <- sapply(0:9, fibonacci)

# Print the Fibonacci numbers
print(fib_nums)

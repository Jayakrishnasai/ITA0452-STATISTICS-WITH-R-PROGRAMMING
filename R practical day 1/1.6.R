# Define a function to get all prime numbers up to a given number
get_primes <- function(n) {
  # Create a logical vector of length n+1 with all elements initially set to TRUE
  primes <- rep(TRUE, n+1)
  
  # Set the first two elements to FALSE since they are not prime
  primes[1] <- FALSE
  primes[2] <- FALSE
  
  # Sieve out all composite numbers up to sqrt(n)
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      primes[i^2:(n+1):(i)] <- FALSE
    }
  }
  
  # Return a vector of all prime numbers up to n
  return(which(primes))
}

# Test the function with n=50
print(get_primes(50))


# Loop over the numbers 1 to 100
for (i in 1:100) {
  
  # Check if i is a multiple of both 3 and 5
  if (i %% 3 == 0 & i %% 5 == 0) {
    print("FizzBuzz")
  }
  
  # Check if i is a multiple of 3
  else if (i %% 3 == 0) {
    print("Fizz")
  }
  
  # Check if i is a multiple of 5
  else if (i %% 5 == 0) {
    print("Buzz")
  }
  
  # If i is not a multiple of 3 or 5, print the number itself
  else {
    print(i)
  }
}

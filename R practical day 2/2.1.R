# create two vectors
vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vec2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

# create an array of two 3x3 matrices from the vectors
arr <- array(c(vec1, vec2), dim = c(3, 3, 2))

# print the second row of the second matrix of the array
print(arr[2, , 2])

# print the element in the 3rd row and 3rd column of the 1st matrix
print(arr[3, 3, 1])


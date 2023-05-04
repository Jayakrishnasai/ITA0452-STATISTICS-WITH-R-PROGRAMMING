# set seed for reproducibility
set.seed(123)

# create a random sample of letters
sample_letters <- sample(LETTERS, 20, replace = TRUE)

# create a factor with the sample of letters
sample_factor <- factor(sample_letters)

# extract the first five levels of the factor
first_five_levels <- levels(sample_factor)[1:5]

# print the first five levels
print(first_five_levels)

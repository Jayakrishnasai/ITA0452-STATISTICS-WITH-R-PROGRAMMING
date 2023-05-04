# create a factor corresponding to height from the women dataset
height_factor <- cut(women$height, breaks = c(50, 55, 60, 65, 70, 75, 80),
                     labels = c("50-54", "55-59", "60-64", "65-69", "70-74", "75-80"))

# print the summary of the height factor
summary(height_factor)

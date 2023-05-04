# Call the airquality dataset
data("airquality")

# Check if the dataset is a data frame
if(is.data.frame(airquality)){
  # Order the entire data frame by the first and second column
  airquality <- airquality[order(airquality$Month, airquality$Day),]
  
  # Remove the "Solar.R" and "Wind" variables
  airquality <- subset(airquality, select = -c(Solar.R, Wind))
  
  # Display the data frame
  print(airquality)
} else {
  print("The airquality dataset is not a data frame")
}

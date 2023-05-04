exam_data = data.frame(
  name = c('Anastasia','Dima','Katherine','James','Emily','Michael','Matthew','Laura','kevin','Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes','no','yes','no','no','yes','yes','no','no','yes')
)
Country <- c("USA","USA","USA","USA","UK","USA","USA","India","USA","USA")
exam_data$country <- Country
print(exam_data)


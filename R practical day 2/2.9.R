exam_data = data.frame(
  name = c('Anastasia','Dima','Katherine','James','Emily','Michael','Matthew','Laura','kevin','Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes','no','yes','no','no','yes','yes','no','no','yes')
)
write.table(exam_data, "exam_data.txt", sep="\t", row.names=FALSE)

cat(readLines("exam_data.txt"), sep="\n")
print(exam_data)
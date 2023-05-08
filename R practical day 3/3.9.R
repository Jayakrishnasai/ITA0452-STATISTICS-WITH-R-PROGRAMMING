# a) Creating dataframe1
dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("New", "New", "New", "New", "New", "Follow-up", "New", "New", "New", "New")
)
print(dataframe1)
# b) Creating dataframe2 using xtabs() function
dataframe2 <- xtabs(~ Reference + Status, data = dataframe1)
print(dataframe2)
# c) Saving the file in the name of dataframe2
saveRDS(dataframe2, file = "dataframe2.rds")
write.csv(dataframe2, "dataframe2.csv", row.names = TRUE)

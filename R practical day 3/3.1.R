#EXE-01
#a)
values <- c(12,7,3,4.2,18,2,54,-21,8,-5)
mean(values)

#b)
values <- c(12,7,3,4.2,18,2,54,-21,8,-5)
mean(values, trim=6/length(values))

#c)
values <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
mean(values, na.rm=TRUE)

library(ggplot2)
library(dplyr)

# Download the mpg dataset
mpg <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/ggplot2/mpg.csv")

# i) Find the car which gives maximum city miles per gallon
mpg %>% 
  filter(cty == max(cty)) %>% 
  select(manufacturer, model, cty)

# Download the mpg dataset
mpg <- mpg
# ii)
# Download the mpg dataset
mpg <- mpg

# Find the minimum displacement for compact cars
compact_cars <- mpg[mpg$class == "compact", ]
min_compact_disp <- subset(compact_cars, displ == min(displ))[c("manufacturer", "model", "class", "displ")]

# Find the minimum displacement for subcompact cars
subcompact_cars <- mpg[mpg$class == "subcompact", ]
min_subcompact_disp <- subset(subcompact_cars, displ == min(displ))[c("manufacturer", "model", "class", "displ")]

# Combine the results into a single data frame
result <- rbind(min_compact_disp, min_subcompact_disp)
print(result)

# Load the dataset
data("PoliticalKnowledge", package = "dslabs")

PoliticalKnowledge<-("C:/Users/koppo/Downloads/politicalKnowledge.csv")

# Load the "plotrix" package
library(plotrix)

# Create the 3D pie chart
pie3D(PoliticalKnowledge$Freq, labels = PoliticalKnowledge$Response,
      main = "Political Knowledge", explode = 0.1, col = rainbow(length(PoliticalKnowledge$Freq)))

# Add a legend
legend("topright", PoliticalKnowledge$Response, cex = 0.8, fill = rainbow(length(PoliticalKnowledge$Freq)))

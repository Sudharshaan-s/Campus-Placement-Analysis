
library(ggplot2)
location <- "C:\\Users\\Asus\\Downloads\\Placement_Data_Full_Class.csv"
placementgg <- read.csv(location)
head(placementgg)
colnames(placementgg)
str(placementgg)

#graph1
b1 <- ggplot(placementgg, aes(x= ssc_p, y = hsc_p))
b1 + geom_point(aes(color = status))

#graph2
b2 <- ggplot(placementgg, aes(degree_t))
b2 + geom_bar(aes(fill = degree_t))

#graph3
b3 <- ggplot(placementgg, aes(degree_p))
b3 + geom_histogram(aes(fill = status), binwidth = 5) + facet_wrap(~gender)

#graph4
ggplot(placementgg) + geom_density(aes(etest_p, fill = degree_t))

#graph5
b4 <- ggplot(placementgg, aes(y = hsc_p))
b4 + geom_boxplot(aes(fill = status)) +
  facet_wrap(~gender)
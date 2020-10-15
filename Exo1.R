#Question 1
library(readr) 
data_cars <- read.table("data/car_lab_data.csv", header= TRUE, sep=";") 
str(data_cars)

#Question 2
nbreKmTot = sum(data_cars$Km)/length(data_cars$Km)

#OU

nbreKmTot <- mean(data_cars$Km)

head(nbreKmTot)

#Réponse : 19831.93km

#Question 3

library(ggplot2)
g1 <- ggplot(data_cars, 
             aes(x=Marque)) + geom_bar() + theme_bw()
g1
ggsave("histogramme_marque_cars.png", plot = g1)


#Question 4
tapply(data_cars$Prix, data_cars$Marque, mean)

#OU

library(dplyr)
res <- data_cars %>%
  group_by(Marque) %>%
  summarise(avg = mean(Prix))
res

#Question 5
boxplot(data_cars$Prix~data_cars$Marque)

#OU

ggplot(data_cars, aes(x=Marque, y=Prix)) + geom_boxplot() + theme_bw()





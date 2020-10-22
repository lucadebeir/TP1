data_bank<-read.table("data/bank_waiting_times.csv", header=TRUE, sep = ";")
str(data_bank)

#Question 1

data_bank$heure <- as.factor(c(rep("matin",13), rep("ap_midi",13)))

#Question 2

library(dplyr)
data_matin <- data_bank %>% filter(heure == "matin")
data_am <- data_bank %>% filter(heure == "ap_midi")

##########################################################
#Test de normalité de Shapiro-Wilk: test non-paramétrique avec les hypothèses suivantes:
# H0: les données sont issues d’un échantillon aléatoire dont la loi est gaussienne
# H1: les données ne sont pas issues d’un échantillon aléatoire dont la loi est gaussienne

#Matin
shapiro.test(data_matin$Temps)

#Shapiro-Wilk normality test

#data:  data_matin$Temps
#W = 0.92934, p-value = 0.3341

#AM
shapiro.test(data_am$Temps)

#Shapiro-Wilk normality test

#data:  data_am$Temps
#W = 0.9536, p-value = 0.6538

#Dans les deux cas la p-value est supérieur à alpha = 95% 
#et on accepte H0. On en conclut que les données ne sont 
#pas significativement non gaussiennes.

##########################################################
#Boxplot

boxplot(data_matin$Temps, data_am$Temps)

#OU

boxplot(data_bank$Temps ~ data_bank$heure)

##########################################################
#Test de student

t.test(data_matin$Temps, data_am$Temps)

#Welch Two Sample t-test

#data:  data_matin$Temps and data_am$Temps
#t = 0.10627, df = 23.056, p-value = 0.9163
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  -1.136240  1.259317
#sample estimates:
#  mean of x mean of y 
#4.538462  4.476923 

#On ne rejette pas H0 car p-value > alpha = 5% donc on 
#en conclut que les moyennes ne sont pas significativement 
#différentes entre le matin et l’après-midi














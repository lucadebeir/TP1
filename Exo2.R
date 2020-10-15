#Question 1
data_bank<-read.table("data/bank_waiting_times.csv", header=TRUE, sep = ";")
str(data_bank)

#Question 2

#taille de l'echantillon
n<-length(data_bank$Observation)

#moyenne empirique
moy_emp<-mean(data_bank$Temps)

#variance empirique
var_emp<-var(data_bank$Temps)

#niveau de confiance (1-alpha)
alpha<-0.1

t.test(data_bank$Temps, conf.level = 0.9)

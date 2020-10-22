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

#90 percent confidence interval : [4.022987, 4.992397]

#Question 3

#Student's T-Test

#mu=4 car 4 minutes
t.test(data_bank$Temps, mu=4, conf.level = 0.9)
#t=1.7892 valeur de la statistique de test
#df=25 nombre de degré de liberté
#p-value=0.08571 p-value associée
#mean of x = 4.507692 moyenne empririque

#alternative hypothesis: true mean is not equal to 4

#p-value < alpha ici donc on rejette H0 et le test répond que 
#la moyenne théorique est significativement différente de 4.


#Question 4

t.test(data_bank$Temps, mu=4, conf.level = 0.95)
alpha<-0.05
#p-value=0.08571
#il y a juste l'intervalle de confiance qui change

#ici, alpha < p-value donc on accepte H0, 
#et le test n’est pas significatif





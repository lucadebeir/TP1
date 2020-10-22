#test du Chi-deux d’independance avec les hypothèses suivantes:

#H0: les parts de marché sont réparties de manière homogène entre 
# les 2 régions (indépendance)

#H1: part de marché non répartie de manière homogène entre 
# les 2 régions

data <- matrix(c(540,460,980,1520),ncol=2)

chisq.test(data)

#Pearson's Chi-squared test with Yates' continuity correction

#data:  data
#X-squared = 63.082, df = 1, p-value = 1.983e-15

#Risque de 5%, ici p-value < 0.05 donc on refuse l'hypothèse 
# d'indépendance

#Rejet de H0 donc il existe une différence significative entre 
# les parts de marché détenues sur les deux régions.
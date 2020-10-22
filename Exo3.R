#test du Chi-deux d’independance avec les hypothèses suivantes:

#H0: la conformité est répartie de manière homogène 
# entre les 5 machines (indépendance)

#H1: la conformité n’est pas répartie de manière homogène
# entre les 5 machines

data <- matrix(c(24,17,14,15,20,176,133,86,105,160),ncol=2)

chisq.test(data)

#Pearson's Chi-squared test

#data:  data
#X-squared = 0.60501, df = 4, p-value = 0.9625

#X-squared valeur de l'indicateur de khideux
#df degré de liberté
#probabilité d'avoir un indicateur de khi-deux de 0.60501 
#pour 4 degrés de liberté

#Risque de 5%, ici p-value > 0.05 donc on accepte l'hypothèse 
#d'indépendance

#Il n’y a pas d’effet significatif des machines sur la
#conformité de la production
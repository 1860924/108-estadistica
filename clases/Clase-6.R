
# importar datos de CedroRojo--------------------------

CR <- read.csv("clases/CedroRojo.csv", header = T)


summary(CR)



# Una Muestra -----------------------------------------------


# Medria teoretica de la varible Diametro 
#Establecida por la CONAFOR para cedro rojo es igual a 13 

# Comparar la media observada de la variable diametro para 
# las plantulas producidas en vivero ( media =12.524, valores 
#observados

# "mu" debe ser igual a la variable teoretica
# El valor de alfa establecido es de 0.05 

t.test(CR$diametro, mu=13) 

t.test(CR$altura, mu = 20)
t.test(CR$altura, mu = 19)

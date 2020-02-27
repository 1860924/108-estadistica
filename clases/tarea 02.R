library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

(acc$freq/sum(acc$freq)*100)

acc$rf <- acc$freq/sum(acc$freq)*100 

barplot(acc$freq, names.arg = acc$x, main =" Accidentes en el aserradero", col= "green")
mean(accidentes)
sum(accidentes)
boxplot(accidentes)


# Ejercicio #2 -------------------------------------------------------------------------

especies <- c("F", "H", "F", "C", "F,", "A", "H", "F", 
               "H", "C", "A", "C", "F", "H", "H", "H", 
                "F", "H", "A", "C", "F", "H","H", "F")
#¿Cual es el promedio de accidentes al mes? 1.9 
# ¿Que nuemro de accidentes reporta la mayor proporcion? el 1 con 30% 

frecu <- table(especies)
frecu
prop.table(frecu)
 
# Ejercicio 3 ---------------------------------------------------------------------------

library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

#Encontrar la frecuencia de las variables vecinos y especies 

.vc <- table(conjunto$Vecinos, conjunto$Especie)
.vc1 <- addmargins(as.table(.vc))
.vc1


frecu <- table(conjunto$Especie)
frecu

frecu <- table(conjunto$Vecinos)
frecu

# Ejercicio 4 ----------------------------------------------------------------------

.h <- conjunto$Altura
range(.h)
hist(.h, main = "Datos sin intervalo definido", col= "red")


intervalo <- seq(7.5, 22.5, by=5 )
intervalo

h.table <- cut(.h, intervalo)
table(h.table)

hist(conjunto$Altura, breaks = intervalo, main = "Datos con intervalo definido ")

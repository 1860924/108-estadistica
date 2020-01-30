# Camila Elisa Medrano Vigil 
#1860924
# 29.01.20 


# Importar datos ---------------------------------------

BD.ebanos <- read.csv("clases/ebanos.csv", header = TRUE) 
head(BD.ebanos)
summary(BD.ebanos)

mean(BD.ebanos$diametro)
mean(BD.ebanos$altura)

sd(BD.ebanos$diametro)
sd(BD.ebanos$altura)


boxplot(BD.ebanos$diametro, ylab="Diametro (cm)",
        col="lightblue", main= "Diametro de plantulas")
boxplot(BD.ebanos$altura)

stem(BD.ebanos$diametro)
stem(BD.ebanos$altura)


hist(BD.ebanos$diametro, col="red", 
     xlab="diametro (cm)", ylab="Frecuencia", 
     main="Histograma de Diametro")


# condicionantes ----------------------------------------------------------

#¿Cuantos individuos tienen un Diam menor que la media? 

sum(BD.ebanos$diametro < mean(BD.ebanos$diametro))
sum(BD.ebanos$diametro < 25.97)


#¿ Cuantos individuos tienen un Diam mayor que la media?

sum(BD.ebanos$diametro > mean(BD.ebanos$diametro))

sum(BD.ebanos$diametro > 30)


#¿Existira una observacion igual a la media? 

sum(BD.ebanos$diametro ==(BD.ebanos$diametro))

# Subconjunto de datos 

ebanos.30 <- subset(BD.ebanos,
                    )
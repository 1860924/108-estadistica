



# Normalidad ----------------------------------------------------------

head(conjunto)

# A plicar pruebas de Shapiro.test para la variable altura.

shapiro.test(conjunto$Altura)

ks.test(conjunto$Diametro, "pnorm", 
        mean=mean(conjunto$Diametro, 
                  sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro)

# Camila Elisa Medrano Vigil 
#1860924
#29.01.20


# operadores basicos  -----------------------------------------------------

2+2
a <- 2 
a+5 
a+a^2 

log(a)

# descriptivas ------------------------------------------------------------


# Ingresar conjunto de datos 

peso <- c(70, 62, 52, 90, 38, 52, 50, 56, 70, 65, 66, 70, 72)
peso
# numero de obresvaciones (length) 

length(peso)

# calcular la media del peso sumatoria de las ovservaciones y dividirlo entre el numero de individuos 

sum(peso)/length(peso)
peso.media<- sum(peso)/length(peso) 

mean(peso)
median(peso)

sd(peso)
var(peso)


fivenum(peso)
range(peso) 

# Graficas 

boxplot(peso)
boxplot(peso,col = "red", ylab= "peso (kg)
        main= peso alumnos tomando el 29.01.20")



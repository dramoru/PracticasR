datos <- c(1, 2, 1, 0, 3, 0, 1, 2, 1)

# Rango
max(datos) - min(datos)

# Tamaño del vector
length(datos)

# Mediana
median(datos)

# Promedio
mean(datos)

# Varianza de la muestra
var(datos)

# Desviación tipica de la muestra
sd(datos)

# Varianza de la población
var(datos) * (length(datos) - 1)/length(datos)

# Resumen de medidas
summary(datos)
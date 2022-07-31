# Permite dibujar varias gráficas en una ventana
par(mfrow = c(2, 3))

# Dibuja un punto en una gráfica
plot(1, 3)

# Dibuja cinco puntos en una gráfica
plot(c(1, 2, 3, 4, 5),
     c(5, 4, 3, 2, 1))

# Dibuja asignando variables
x <- c(1, 2, 3, 4, 5)
y <- c(6, 7, 8, 9, 10)
plot(x, y)

# Dibuja una línea entre puntos
x <- c(1, 2, 3, 4, 5)
y <- c(6, 7, 6, 7, 6)
plot(x, y, type="l")

# Dibuja etiquetas
x <- 1:10
y <- 11:20
plot(x,
     y,
     main="Mi gráfica",
     xlab="El eje x",
     ylab="El eje y")

# Agrega colores
x <- 1:10
y <- 11:20
plot(x, y, col="red")

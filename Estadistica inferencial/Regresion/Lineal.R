# Crea las variables responsables
x <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
y <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# Crea el predictor
relation <- lm(y~x)
relation

# Dibuja las gráficas
plot(x,
     y,
     col = "blue",
     main = "Regresión Altura vs Peso",
     abline(lm(y~x)),
     pch = 16,
     xlab = "Peso en Kg",
     ylab = "Altura en cm")

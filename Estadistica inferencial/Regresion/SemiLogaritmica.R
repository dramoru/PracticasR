# Crea las variables responsables
x=2:16
y=c(69, 60, 44, 38, 33, 28, 23, 20, 17, 15, 13, 12, 11, 10, 9.5)

# Crea el predictor
relation <- lm(log(y)~x)
relation

# Dibuja las gráficas
plot(x,
     log(y),
     col = "blue",
     main = "Regresión Altura vs Peso",
     abline(lm(log(y)~x)),
     pch = 16)
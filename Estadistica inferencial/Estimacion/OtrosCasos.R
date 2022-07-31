# --------------------------------------
# Intervalos de confianza o estimaciones
# --------------------------------------

# Media poblacional, varianza poblacional conocida
n <- 36
prom <- 2.6 
sigma <- 0.3
porc <- 0.95

inf <- prom - qnorm(1 - (1 - porc)/2)*sigma/sqrt(n)
sup <- prom + qnorm(1 - (1 - porc)/2)*sigma/sqrt(n)

intervalo <- c(inf, sup)
intervalo

# Varianza poblacional
datos <- c(46.4, 46.1, 45.8, 47.0, 46.1, 45.9, 45.8, 46.9, 45.2, 46.0)
n <- length(datos)
vari <- var(datos)
porc <- 0.95

inf <- (n - 1)*vari/qchisq(1 - (1 - porc)/2, n - 1)
sup <- (n - 1)*vari/qchisq((1 - porc)/2, n - 1)

intervalo <- c(inf, sup)
intervalo

# Razón de varianzas poblacionales
n1 <- 15
n2 <- 12
s1 <- 3.07
s2 <- 0.80
porc <- 0.98

inf <- (s1^2)/(s2^2)*(1/qf(1 - (1 - porc)/2, n1 - 1, n2 - 1))
sup <- (s1^2)/(s2^2)*qf(1 - (1 - porc)/2, n2 - 1, n1 - 1)

intervalo <- c(inf, sup)
intervalo
# ----------------------------------------------------
# Media poblacional, varianza poblacional desconocida
# ----------------------------------------------------

datos <- c(9.8, 10.2, 10.4, 9.8, 10.0, 10.2, 9.6)
porc <- 0.95

# Método manual

n <- length(datos)
prom <- mean(datos)
desv <- sqrt(var(datos))

inf <- prom - qt(1 - (1 - porc)/2, n - 1)*desv/sqrt(n)
sup <- prom + qt(1 - (1 - porc)/2, n - 1)*desv/sqrt(n)
intervalo <- c(inf, sup)
intervalo

# Método simple

t.test(x=datos, conf.level=porc)$conf.int
# --------------------------------------
# Proporción poblacional
# --------------------------------------

p <- 0.68
n <- 500
porc <- 0.95

# Método manual

inf <- p - qnorm(1 - (1 - porc)/2)*sqrt(p*(1-p)/n)
sup <- p + qnorm(1 - (1 - porc)/2)*sqrt(p*(1-p)/n)

intervalo <- c(inf, sup)
intervalo

# Método simple

prop.test(x=p*n, n=n, conf.level=porc)$conf.int
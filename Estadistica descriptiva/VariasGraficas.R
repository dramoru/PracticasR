# Permite dibujar varias gráficas en una ventana
par(mfrow = c(2, 2))

# Diagrama de dispersión
x <- c(1, 2, 2, 3, 3, 4, 5, 6, 7)
y <- c(2, 2, 3, 3, 4, 4, 5, 6, 6)
plot(x, y, main = "Gráfico de dispersión")

# Gráfico de barras
x_y <- factor(c(0, 0, 0, 1, 0, 0, 2, 0, 3, 2))
plot(x_y, main = "Diagrama de barras")

# Dibujar una función
func <- function(x) sin(x)
plot(func, 0, 10, main = "Trazar una función")

# Diagrama de cajas
x <- factor(c(0, 0, 0, 0, 1, 1, 1, 1))
y <- c(2, 4, 6, 8, 3, 4, 5, 6)
plot(x, y, main = "Diagrama de cajas y bigotes")
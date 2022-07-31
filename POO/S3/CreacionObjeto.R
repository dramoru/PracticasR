estudiante <- function(nombre, edad, puntaje) {
    valor <- list(nombre=nombre,
                  edad=edad,
                  puntaje=puntaje)

    attr(valor, "class") <- "estudiante"
    valor
}

describir <- function(obj) {
    UseMethod("describir")
}

describir.estudiante <- function(objeto) {
    cat("Datos del estudiante", "\n")
    cat("Nombre:", objeto$nombre, "\n")
    cat("Edad:", objeto$edad, "años\n")
    cat("Puntaje:", objeto$puntaje, "\n")
}

objeto = estudiante("Pablo", 26, 3.7)
describir(objeto)

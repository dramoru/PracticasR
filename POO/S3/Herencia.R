estudiante <- function(nombre){
    valor <- list(nombre=nombre)

    attr(valor, "class") <- "estudiante"
    valor
}

describir <- function(objeto) {
    UseMethod("describir")
}

describir.estudiante <- function(objeto){
    cat("Datos del estudiante", "\n")
    cat("Nombre:", objeto$nombre, "\n")
}

estudianteInternacional <- function(nombre){
    valor <- list(nombre=nombre)

    attr(valor, "class") <- c("estudianteInternacional", "estudiante")
    valor
}

objeto <- estudianteInternacional(nombre="Cristina")
describir(objeto)
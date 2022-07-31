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

estudianteInternacional <- function(nombre, pais){
    valor <- list(nombre=nombre, pais=pais)
    attr(valor, "class") <- c("estudianteInternacional", "estudiante")
    valor
}

describir.estudianteInternacional <- function(objeto){
    cat("Datos del estudiante", "\n")
    cat("Nombre:", objeto$nombre, "\n")
    cat("Pais:", objeto$pais, "\n")
}
  

objeto <- estudiante(nombre="Utkarsh")
describir(objeto)

objeto <- estudianteInternacional(nombre="Cristina", pais="Inglaterra")
describir(objeto)
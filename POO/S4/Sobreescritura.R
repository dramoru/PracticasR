estudiante <- setClass(
    "estudiante", 
    slots=list(nombre="character")
)

setGeneric(
    "describir",
    function(object) {
        standardGeneric("describir")
    }
)

setMethod(
    "describir",
    "estudiante",
    function(object) {
        cat("Datos del estudiante", "\n")
        cat("Nombre:", object@nombre, "\n")
    }
)

estudianteInternacional <- setClass(
    "estudianteInternacional", 
    slots=list(pais="character"),
    contains="estudiante"
)

setMethod(
    "describir",
    "estudianteInternacional",
    function(object) {
        cat("Datos del estudiante", "\n")
        cat("Nombre:", object@nombre, "\n")
        cat("País:", object@pais, "\n")
    }
)

objeto <- estudiante(nombre="Camilo")
describir(objeto)

objeto <- estudianteInternacional(nombre="Carlos", pais="Colombia")
describir(objeto)
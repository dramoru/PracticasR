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
    contains="estudiante"
)

objeto <- estudianteInternacional(nombre="Carlos")
describir(objeto)
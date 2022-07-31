estudiante <- setClass(
    "estudiante", 
    slots=list(
        nombre="character", 
        edad="numeric", 
        puntaje="numeric"
    )
)

setGeneric("describir", function(object) {
    standardGeneric("describir")
})

setMethod(
    "describir",
    "estudiante",
    function(object) {
        cat("Datos del estudiante", "\n")
        cat("Nombre:", object@nombre, "\n")
        cat("Edad:", object@edad, "años\n")
        cat("Puntaje:", object@puntaje, "\n")
    }
)

objeto <- estudiante(nombre="Carlos", edad=23, puntaje=9.5)
describir(objeto)
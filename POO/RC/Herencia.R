estudiante <- setRefClass(
    "estudiante",
    fields = list(
        nombre="character"
    ),
    methods = list(
        describir = function() {
            cat("Datos del estudiante", "\n")
            cat("Nombre:", nombre, "\n")
        }
    )
)

estudianteInternacional <- setRefClass(
    "estudianteInternacional", 
    contains = "estudiante"
)

objeto <- estudianteInternacional(nombre="Carlos")
objeto$describir()
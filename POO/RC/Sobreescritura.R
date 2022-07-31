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
    contains = "estudiante",
    fields = list(
        pais="character"
    ),
    methods = list(
        describir = function() {
            cat("Datos del estudiante", "\n")
            cat("Nombre:", nombre, "\n")
            cat("País:", pais, "\n")
        }
    )
)

objeto <- estudiante(nombre="Camilo")
objeto$describir()

objeto <- estudianteInternacional(nombre="Carlos", pais="Colombia")
objeto$describir()
estudiante <- setRefClass(
    "estudiante",
    fields = list(
        nombre="character", 
        edad="numeric", 
        puntaje="numeric"
    ),
    methods = list(
        describir = function() {
            cat("Datos del estudiante", "\n")
            cat("Nombre:", nombre, "\n")
            cat("Edad:", edad, "años\n")
            cat("Puntaje:", puntaje, "\n")
        }
    )
)

objeto <- estudiante(nombre = "John", edad = 21, puntaje = 3.5)
objeto$describir()
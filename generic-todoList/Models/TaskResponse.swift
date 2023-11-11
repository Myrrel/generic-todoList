import Foundation

struct TaskResponse: Decodable {
    let id: Int
    let title: String
    let completed: Bool
    // Otros campos que el servidor devuelve, si los hay

    // Puedes tener inicializadores personalizados si es necesario
    // init(id: Int, title: String, completed: Bool) { ... }
}

//En este ejemplo, estamos asumiendo que el servidor devuelve tres campos para cada tarea: id (un identificador único), title (el título de la tarea) y completed (un indicador de si la tarea está completada o no).
//
//Ten en cuenta que Decodable es un protocolo que permite a la estructura ser inicializada desde un objeto JSON, lo que es útil cuando recibes datos del servidor en formato JSON. Si el formato de la respuesta es diferente, puedes ajustar la estructura en consecuencia.
//
//Además, si la respuesta del servidor contiene más campos, simplemente agrega esas propiedades a la estructura TaskResponse. Esto asegurará que tu aplicación pueda manejar y utilizar la información devuelta por el servidor de manera efectiva.
//






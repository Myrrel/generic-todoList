import Foundation

enum Endpoint {
    static let baseURL = "https://api.example.com/tasks"

    static func tasks() -> String {
        return "\(baseURL)/tasks"
    }

    // Agrega otros endpoints según sea necesario
}

import Foundation

struct TaskItem: Identifiable, Decodable {
    var id = UUID()
    var title: String
    var completed: Bool
}

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var taskStore = TaskStore()
    @State private var newTaskTitle = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("New task", text: $newTaskTitle)
                Button(action: {
                    let task = TaskItem(title: self.newTaskTitle, completed: true)
                    self.taskStore.addTask(task: task)
                    self.newTaskTitle = ""
                }) {
                    Text("Add")
                }
            }
            List {
                ForEach(taskStore.tasks) { task in
                    Text(task.title)
                }
                .onDelete(perform: taskStore.removeTask)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

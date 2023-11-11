//
//  TaskStore.swift
//  text-button-image
//
//  Created by Harlock on 27/10/2023.
//

import Foundation


class TaskStore: ObservableObject {
    @Published var tasks = [TaskItem]()
    
    func addTask(task: TaskItem) {
        tasks.append(task)
    }
    
    func removeTask(atOffsets offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

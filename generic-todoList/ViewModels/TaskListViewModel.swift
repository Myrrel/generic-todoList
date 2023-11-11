//
//  TaskListViewModel.swift
//  text-button-image
//
//  Created by Harlock on 27/10/2023.
//

import Foundation

class TaskListViewModel: ObservableObject {
    @Published var tasks = [TaskItem]()
    private let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
        fetchTasks()
    }

    func fetchTasks() {
        networkService.getTasks { [weak self] result in
            switch result {
            case .success(let tasks):
                DispatchQueue.main.async {
                    self?.tasks = tasks
                }
            case .failure(let error):
                print("Error fetching tasks: \(error)")
            }
        }
    }
}

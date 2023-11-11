//
//  TaskItem.swift
//  text-button-image
//
//  Created by Harlock on 27/10/2023.
//

import Foundation

struct TaskItem: Identifiable, Decodable {
    var id = UUID()
    var title: String
    var completed: Bool
}

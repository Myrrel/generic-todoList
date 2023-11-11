//
//  Endpoint.swift
//  text-button-image
//
//  Created by Harlock on 27/10/2023.
//

import Foundation

enum Endpoint {
    static let baseURL = "https://api.example.com/tasks"

    static func tasks() -> String {
        return "\(baseURL)/tasks"
    }

    // Agrega otros endpoints según sea necesario
}

//
//  NetworkError.swift
//  text-button-image
//
//  Created by Harlock on 27/10/2023.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
    
    // Agrega otros casos según sea necesario
}

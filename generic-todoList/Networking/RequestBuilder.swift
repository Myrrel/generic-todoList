//
//  RequestBuilder.swift
//  text-button-image
//
//  Created by Harlock on 27/10/2023.
//

import Foundation

class RequestBuilder {
    static func buildGetRequest(urlString: String) -> URLRequest? {
        guard let url = URL(string: urlString) else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        
        
        return request
    }
}

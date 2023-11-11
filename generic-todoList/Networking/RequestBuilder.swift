import Foundation

class RequestBuilder {
    static func buildGetRequest(urlString: String) -> URLRequest? {
        guard let url = URL(string: urlString) else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        
        
        return request
    }
}

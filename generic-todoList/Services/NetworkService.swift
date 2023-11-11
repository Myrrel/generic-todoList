import Foundation

class NetworkService {
    func getTasks(completion: @escaping (Result<[TaskItem], Error>) -> Void) {
            guard let request = RequestBuilder.buildGetRequest(urlString: Endpoint.tasks()) else {
                completion(.failure(NetworkError.invalidURL))
                return
            }
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(NetworkError.noData))
                    return
                }
                
                do {
                    let tasks = try JSONDecoder().decode([TaskItem].self, from: data)
                    completion(.success(tasks))
                } catch {
                    completion(.failure(error))
                }
            }.resume()
        }
}

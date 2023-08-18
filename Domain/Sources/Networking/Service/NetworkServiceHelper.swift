import Combine
import Alamofire

extension DataRequest {
    
    func response(result: @escaping (Result<NetworkResponse, NetworkError>) -> Void) {
        responseData { responseData in
            switch responseData.result {
            case .success(let data):
                let networkResponse = NetworkResponse.from(responseData.response, data: data)
                result(.success(networkResponse))
            case .failure(let error):
                let networkError = NetworkError.error(error.localizedDescription)
                result(.failure(networkError))
            }
        }
    }
    
    func response() -> AnyPublisher<NetworkResponse, NetworkError> {
        Future<NetworkResponse, NetworkError> { promise in
            self.response { result in
                switch result {
                case .success(let response):
                    promise(.success(response))
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: { self.cancel() })
        .eraseToAnyPublisher()
    }
    
}

extension AnyPublisher {
    func async() async throws -> Output {
        try await withCheckedThrowingContinuation({ continuation in
            var cancellable: AnyCancellable?
            cancellable = first()
                .sink { result in
                    switch result {
                    case .finished:
                        break
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                    
                    cancellable?.cancel()
                } receiveValue: { value in
                    continuation.resume(with: .success(value))
                }
        })
    }
}

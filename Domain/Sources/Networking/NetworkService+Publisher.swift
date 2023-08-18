import Combine

extension NetworkService {
    
    public func request(endpoint: NetworkEndpoint) -> AnyPublisher<NetworkResponse, NetworkError> {
        let task = session.request(
            endpoint.path,
            method: endpoint.method.value,
            parameters: endpoint.body,
            encoding: endpoint.encoding.value,
            headers: endpoint.asHTTPHeaders()
        )
        return task.response()
    }
    
    public func upload(endpoint: NetworkEndpoint, formData: [NetworkFormData]) -> AnyPublisher<NetworkResponse, NetworkError> {
        let task = session.upload(
            multipartFormData: formData.asMutipartFormData(),
            to: endpoint.path,
            headers: endpoint.asHTTPHeaders()
        )
        return task.response()
    }
    
}

import Alamofire

extension NetworkService {
    
    public func request(
        endpoint: NetworkEndpoint,
        result: @escaping (Result<NetworkResponse, NetworkError>) -> Void
    ) {
        let task = session.request(
            endpoint.path,
            method: endpoint.method.value,
            parameters: endpoint.body,
            encoding: endpoint.encoding.value,
            headers: endpoint.asHTTPHeaders()
        )
        return task.response(result: result)
    }
    
    public func upload(
        endpoint: NetworkEndpoint,
        formData: [NetworkFormData],
        result: @escaping (Result<NetworkResponse, NetworkError>) -> Void
    ) {
        let task = session.upload(
            multipartFormData: formData.asMutipartFormData(),
            to: endpoint.path,
            headers: endpoint.asHTTPHeaders()
        )
        return task.response(result: result)
    }
    
}

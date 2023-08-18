import Combine

extension NetworkService {
    
    public func asyncRequest(endpoint: NetworkEndpoint) async throws -> NetworkResponse {
        try await request(endpoint: endpoint).async()
    }
    
    public func asyncUpload(endpoint: NetworkEndpoint, formData: [NetworkFormData]) async throws -> NetworkResponse {
        try await upload(endpoint: endpoint, formData: formData).async()
    }
    
}

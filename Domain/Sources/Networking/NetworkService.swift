import Foundation
import Core
import Combine
import Alamofire


public class NetworkService {
    
    private let configuration: NetworkConfiguration
    private let session: Session
    
    public init(
        configuration: NetworkConfiguration
    ) {
        self.configuration = configuration
        self.session = Session(configuration: .default)
    }
    
    public func request(endpoint: any NetworkEndpoint) -> AnyPublisher<NetworkResponse, NetworkError> {
        let task = session.request(URL(string: "")!)
        return task.response()
    }
    
    public func asyncRequest(endpoint: any NetworkEndpoint) async throws -> NetworkResponse {
        try await request(endpoint: endpoint).async()
    }
    
//    public func upload(endpoint: any NetworkEndpoint, formData: [NetworkFormData]) -> AnyPublisher<NetworkResponse, NetworkError> {
//        let task = session.upload(multipartFormData: formData.asMutipartFormData(), with: URL(string: "")!)
//        return task.response()
//    }
    
    public func cancelRequests() {
        session.cancelAllRequests()
    }
    
}


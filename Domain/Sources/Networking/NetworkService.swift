import Foundation
import Core
import Combine
import Alamofire

public class NetworkService {
    
    // Network Configuration
    private let configuration: NetworkConfiguration
    
    private lazy var serverTrustManager: ServerTrustManager? = {
        if configuration.enableSSLPinning {
            let shouldEvaluated = !configuration.allowInsecureConnection
            let host = configuration.host()
            let evaluator = PinnedCertificatesTrustEvaluator()
            let serverTrustManager = ServerTrustManager(allHostsMustBeEvaluated: shouldEvaluated, evaluators: [host: evaluator])
            return serverTrustManager
        } else {
            return nil
        }
    } ()
    
    // Session
    private lazy var session: Session = {
        let networkLogger = NetworkLogger()
        return Session(
            configuration: configuration.sessionConfiguration,
            serverTrustManager: serverTrustManager,
            eventMonitors: configuration.enableDebugLog ? [networkLogger] : []
        )
    } ()
    
    public init(
        configuration: NetworkConfiguration
    ) {
        self.configuration = configuration
        self.session = Session(configuration: .default)
    }
    
    // Request
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
    
    // Async Request
    public func asyncRequest(endpoint: NetworkEndpoint) async throws -> NetworkResponse {
        try await request(endpoint: endpoint).async()
    }
    
    // Upload
    public func upload(endpoint: NetworkEndpoint, formData: [NetworkFormData]) -> AnyPublisher<NetworkResponse, NetworkError> {
        let task = session.upload(
            multipartFormData: formData.asMutipartFormData(),
            to: endpoint.path,
            headers: endpoint.asHTTPHeaders()
        )
        return task.response()
    }
    
    // Async Upload
    public func asyncUpload(endpoint: NetworkEndpoint, formData: [NetworkFormData]) async throws -> NetworkResponse {
        try await upload(endpoint: endpoint, formData: formData).async()
    }
    
    public func cancelRequests() {
        session.cancelAllRequests()
    }
    
}


import Foundation
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
    lazy var session: Session = {
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
    
    public func cancelRequests() {
        session.cancelAllRequests()
    }
    
}



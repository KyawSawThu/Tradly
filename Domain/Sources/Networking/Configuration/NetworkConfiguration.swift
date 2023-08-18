import Foundation

public struct NetworkConfiguration {
    let serverURL: String
    let sessionConfiguration: URLSessionConfiguration
    let enableSSLPinning: Bool
    let allowInsecureConnection: Bool
    let enableDebugLog: Bool
    
    public init(
        serverURL: String,
        sessionConfiguration: URLSessionConfiguration,
        enableSSLPinning: Bool,
        allowInsecureConnection: Bool,
        enableDebugLog: Bool
    ) {
        self.serverURL = serverURL
        self.sessionConfiguration = sessionConfiguration
        self.enableSSLPinning = enableSSLPinning
        self.allowInsecureConnection = allowInsecureConnection
        self.enableDebugLog = enableDebugLog
    }
    
    func host() -> String {
        if #available(iOS 16.0, *) {
            return URL(string: serverURL)?.host() ?? ""
        } else {
            return URL(string: serverURL)?.host ?? ""
        }
    }
}

import Foundation
import Alamofire

public protocol NetworkEndpoint {
    var path: URL { get }
    var method: RequestMethod { get }
    var headers: RequestHeaders? { get }
    var body: RequestBody { get }
    var encoding: RequestEncoding { get }
    var auth: AuthType { get }
}

extension NetworkEndpoint {
    var auth: AuthType { AuthType.none }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func asHTTPHeaders() -> HTTPHeaders? {
        if let headers = headers {
            return HTTPHeaders(headers)
        } else {
            return nil
        }
    }
    
}

//public extension NetworkEndpoint {
//
//    mutating func prepareHeaders(values: [String: String]) {
//        for (key, value) in values {
//            if let _ = self.headers {
//                self.headers?[key] = value
//            } else {
//                self.headers = values
//            }
//        }
//    }
//
//    mutating func setAuthorization(_ value: String) {
//        guard auth != .none else { return }
//        let authHeaders = ["Authorization": "\(auth.rawValue) \(value)"]
//        prepareHeaders(values: authHeaders)
//    }
//
//    func asURL(for baseUrl: String) -> URL? {
//        let encodedPath = path.encodeUTF8() ?? path
//        return URL(string: baseUrl + encodedPath)
//    }
//}

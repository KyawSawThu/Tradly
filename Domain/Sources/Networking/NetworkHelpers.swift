import Foundation
import Core
import Combine
import Alamofire

// REQUEST METHOD
public enum RequestMethod: String {
    case get
    case post
    case put
    case update
    case delete
}

// REQUEST BODY
public typealias RequestBody = [String: String]

// FORM DATA
public struct NetworkFormData {
    let data: Data
    let key: String
    let filename: String?
    let mimeType: String?
    
    public init(
        data: Data,
        key: String,
        filename: String? = nil,
        mimeType: String? = nil
    ) {
        self.data = data
        self.key = key
        self.filename = filename
        self.mimeType = mimeType
    }
}

extension Array where Element == NetworkFormData {
    func asMutipartFormData () -> (MultipartFormData) -> Void {{
        map { ($0.data, $0.key, $0.filename, $0.mimeType) }.forEach($0.append)
    }}
}

// REQUEST ENCODING
public enum RequestEncoding {
    case query
    case json
    case `none`
    
    var value: ParameterEncoding {
        switch self {
        case .query: return URLEncoding.queryString
        case .json: return JSONEncoding.default
        case .none: return URLEncoding.default
        }
    }
}

// DATA REQUEST EXTENSIONS
extension DataRequest {
    
    func response() -> AnyPublisher<NetworkResponse, NetworkError> {
        AnyPublisher.create { observer in
            self.handle(with: observer).resume()
            return Disposable { self.cancel() }
        }
    }
    
    func handle(with observer: AnyObserver<NetworkResponse, NetworkError>) -> Self {
        responseData { responseData in
            switch responseData.result {
            case .success(let data):
                let networkResponse = NetworkResponse.from(responseData.response, data: data)
                observer.onNext(networkResponse)
            case .failure(let error):
                let networkError = NetworkError.error(error.localizedDescription)
                observer.onError(networkError)
            }
        }
    }
}

import Foundation
import Alamofire

// REQUEST METHOD
public enum RequestMethod: String {
    case get, post, put, update, delete
    
    var value: HTTPMethod {
        .init(rawValue: rawValue)
    }
}

// REQUEST HEADERS
public typealias RequestHeaders = [String: String]

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

// AUTH TYPE
public enum AuthType {
    case basic
    case bearer
    case `none`
}

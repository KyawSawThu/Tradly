import Foundation

public struct NetworkResponse {
    public let statusCode: Int
    public let responseHeaders: [String: String]
    public let responseData: Data
}

extension NetworkResponse {
    static func from(_ response: HTTPURLResponse?, data: Data) -> NetworkResponse {
        return NetworkResponse(
            statusCode: response?.statusCode ?? 1000,
            responseHeaders: response?.allHeaderFields as? [String: String] ?? [:],
            responseData: data
        )
    }
}


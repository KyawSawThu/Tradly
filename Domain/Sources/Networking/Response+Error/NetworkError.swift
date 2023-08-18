import Foundation

public enum NetworkError: LocalizedError {
    case error(String)
    case invalidURL(String)
    
    public var errorDescription: String? {
        switch self {
        case .error(let message):
            return "NetworkError: \(message)"
        case .invalidURL(let path):
            return "NetworkError: Couldn't create a url for \(path)."
        }
    }
}

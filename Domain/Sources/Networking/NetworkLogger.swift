import Alamofire

class NetworkLogger: EventMonitor {
    
    func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) {
        let message = """
        *------------***------------*****------------***------------*
        \(response.debugDescription)
        *------------***------------*****------------***------------*
        """
        print(message)
    }
    
}

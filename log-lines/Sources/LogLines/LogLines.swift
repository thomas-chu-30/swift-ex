// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
enum LogLevel {
    case trace
    case debug
    case info
    case warning
    case error
    case fatal
    case unknown
    
    init(_ line: String) {
        if line.hasPrefix("[TRC]:") {
            self = .trace
        } else if line.hasPrefix("[DBG]:") {
            self = .debug
        } else if line.hasPrefix("[INF]:") {
            self = .info
        } else if line.hasPrefix("[WRN]:") {
            self = .warning
        } else if line.hasPrefix("[ERR]:") {
            self = .error
        } else if line.hasPrefix("[FTL]:") {
            self = .fatal
        } else {
            self = .unknown
        }
    }
    
    func shortFormat(message: String) -> String {
        let level: Int
        switch self {
        case .trace:
            level = 0
        case .debug:
            level = 1
        case .info:
            level = 4
        case .warning:
            level = 5
        case .error:
            level = 6
        case .fatal:
            level = 7
        case .unknown:
            level = 42
        }
        return "\(level):\(message)"
    }
}

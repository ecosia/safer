import Foundation

public final class Safer {
    public init() {
        
    }
    
    public func analyse(_ cookies: [HTTPCookie]) -> Report {
        switch cookies.count {
        case let count where count < 1: return .init(rating: .good, cookies: count)
        case let count where count > 0 && count < 4: return .init(rating: .ok, cookies: count)
        default: return .init(rating: .bad, cookies: cookies.count)
        }
    }
}

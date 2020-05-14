import Foundation

public final class Safer {
    public init() {
        
    }
    
    public func analyse(_ cookies: [HTTPCookie]) -> Report {
        .init(rating: .good, cookies: 0)
    }
}

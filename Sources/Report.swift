import Foundation

public struct Report {
    public static let new = Report(rating: .unknown, cookies: 0)
    
    public enum Rating {
        case unknown
        case bad
        case ok
        case good
    }

    public let rating: Rating
    public let cookies: Int
}

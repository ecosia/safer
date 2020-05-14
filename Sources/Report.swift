import Foundation

public struct Report {
    public enum Rating {
        case unknown
        case bad
        case ok
        case good
    }

    public let rating: Rating
    public let cookies: Int
}

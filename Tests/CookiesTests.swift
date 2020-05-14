import XCTest
import Safer

final class CookiesTests: XCTestCase {
    private var safer: Safer!
    
    override func setUp() {
        safer = .init()
    }
    
    func testNoCookies() {
        XCTAssertEqual(.good, safer.analyse([]).rating)
        XCTAssertEqual(0, safer.analyse([]).cookies)
    }
}

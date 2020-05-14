import XCTest
@testable import Safer

final class SaferTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Safer().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

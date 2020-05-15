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
    
    func testOkCookies() {
        XCTAssertEqual(.ok, safer.analyse([
            HTTPCookie(properties: [.name: "a", .domain: "avoca.de", .path: "/", .value: "a"])!,
            HTTPCookie(properties: [.name: "b", .domain: "avoca.de", .path: "/", .value: "b"])!,
            HTTPCookie(properties: [.name: "c", .domain: "avoca.de", .path: "/", .value: "c"])!]).rating)
        XCTAssertEqual(3, safer.analyse([
            HTTPCookie(properties: [.name: "a", .domain: "avoca.de", .path: "/", .value: "a"])!,
            HTTPCookie(properties: [.name: "b", .domain: "avoca.de", .path: "/", .value: "b"])!,
            HTTPCookie(properties: [.name: "c", .domain: "avoca.de", .path: "/", .value: "c"])!]).cookies)
    }
    
    func testBadCookies() {
        XCTAssertEqual(.bad, safer.analyse([
            HTTPCookie(properties: [.name: "a", .domain: "avoca.de", .path: "/", .value: "a"])!,
            HTTPCookie(properties: [.name: "b", .domain: "avoca.de", .path: "/", .value: "b"])!,
            HTTPCookie(properties: [.name: "c", .domain: "avoca.de", .path: "/", .value: "c"])!,
            HTTPCookie(properties: [.name: "d", .domain: "avoca.de", .path: "/", .value: "d"])!,
            HTTPCookie(properties: [.name: "e", .domain: "avoca.de", .path: "/", .value: "e"])!]).rating)
        XCTAssertEqual(5, safer.analyse([
            HTTPCookie(properties: [.name: "a", .domain: "avoca.de", .path: "/", .value: "a"])!,
            HTTPCookie(properties: [.name: "b", .domain: "avoca.de", .path: "/", .value: "b"])!,
            HTTPCookie(properties: [.name: "c", .domain: "avoca.de", .path: "/", .value: "c"])!,
            HTTPCookie(properties: [.name: "d", .domain: "avoca.de", .path: "/", .value: "d"])!,
            HTTPCookie(properties: [.name: "e", .domain: "avoca.de", .path: "/", .value: "e"])!]).cookies)
    }
}

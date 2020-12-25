import XCTest
@testable import HUDKit

final class HUDKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(HUDKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

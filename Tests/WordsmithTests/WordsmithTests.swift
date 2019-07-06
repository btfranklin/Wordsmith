import XCTest
@testable import Wordsmith

final class WordsmithTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Wordsmith().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

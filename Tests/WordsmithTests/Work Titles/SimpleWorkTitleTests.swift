//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class SimpleWorkTitleTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: SimpleWorkTitle())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: SimpleWorkTitle())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: SimpleWorkTitle())
    }
}

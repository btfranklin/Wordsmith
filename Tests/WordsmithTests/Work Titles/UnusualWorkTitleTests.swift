//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class UnusualWorkTitleTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: UnusualWorkTitle())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: UnusualWorkTitle(), consecutiveRetryLimit: 3)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: UnusualWorkTitle())
    }
}

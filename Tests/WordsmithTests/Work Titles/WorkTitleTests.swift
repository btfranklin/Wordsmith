//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class WorkTitleTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: WorkTitle())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: WorkTitle(), consecutiveRetryLimit: 5)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: WorkTitle())
    }
}

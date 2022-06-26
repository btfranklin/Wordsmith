//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class SurnameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: Surname())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: Surname(), consecutiveRetryLimit: 100)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: Surname())
    }
}

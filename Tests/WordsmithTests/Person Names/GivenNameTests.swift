//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class GivenNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: GivenName())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: GivenName(), consecutiveRetryLimit: 100)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: GivenName())
    }
}

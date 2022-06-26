//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class WeirdNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: WeirdName(syllableCount: 3))
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: WeirdName(syllableCount: 2), consecutiveRetryLimit: 50)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: WeirdName(syllableCount: 3))
    }
}

//  Created by B.T. Franklin on 1/24/21.

import XCTest
@testable import Wordsmith

class FictionalMineralNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: FictionalMineralNameGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: FictionalMineralNameGenerator(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: FictionalMineralNameGenerator())
    }

}

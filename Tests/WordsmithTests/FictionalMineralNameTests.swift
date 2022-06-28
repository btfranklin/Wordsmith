//  Created by B.T. Franklin on 1/24/21.

import XCTest
@testable import Wordsmith

class FictionalMineralNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: FictionalMineralName())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: FictionalMineralName(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: FictionalMineralName())
    }

}

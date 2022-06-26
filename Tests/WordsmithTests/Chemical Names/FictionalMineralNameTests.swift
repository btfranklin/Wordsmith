//  Created by B.T. Franklin on 1/24/21.

import XCTest
@testable import Wordsmith

class FictionalMineralNameTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: FictionalMineralNameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: FictionalMineralNameGenerator(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: FictionalMineralNameGenerator())
    }

}

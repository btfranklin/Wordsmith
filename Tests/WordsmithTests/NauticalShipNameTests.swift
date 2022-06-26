//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class NauticalShipNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: NauticalShipName())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: NauticalShipName(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: NauticalShipName())
    }
}


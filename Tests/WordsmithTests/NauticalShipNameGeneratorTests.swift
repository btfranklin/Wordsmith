//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class NauticalShipNameGeneratorTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: NauticalShipNameGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: NauticalShipNameGenerator(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: NauticalShipNameGenerator())
    }
}


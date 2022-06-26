//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class NauticalShipNameGeneratorTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: NauticalShipNameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: NauticalShipNameGenerator(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: NauticalShipNameGenerator())
    }
}


//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class GivenNameTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: GivenNameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: GivenNameGenerator(), consecutiveRetryLimit: 100)
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: GivenNameGenerator())
    }
}

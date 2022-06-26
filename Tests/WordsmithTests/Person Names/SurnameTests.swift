//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class SurnameTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: SurnameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: SurnameGenerator(), consecutiveRetryLimit: 100)
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: SurnameGenerator())
    }
}

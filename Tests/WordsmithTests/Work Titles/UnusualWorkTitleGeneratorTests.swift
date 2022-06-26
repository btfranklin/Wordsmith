//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class UnusualWorkTitleGeneratorTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: UnusualWorkTitleGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: UnusualWorkTitleGenerator(), consecutiveRetryLimit: 3)
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: UnusualWorkTitleGenerator())
    }
}

//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class WorkTitleGeneratorTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: WorkTitleGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: WorkTitleGenerator(), consecutiveRetryLimit: 5)
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: WorkTitleGenerator())
    }
}

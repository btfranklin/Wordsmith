//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class UnusualWorkTitleGeneratorTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: UnusualWorkTitleGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: UnusualWorkTitleGenerator(), consecutiveRetryLimit: 3)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: UnusualWorkTitleGenerator())
    }
}

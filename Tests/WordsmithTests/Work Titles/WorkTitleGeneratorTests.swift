//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class WorkTitleGeneratorTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: WorkTitleGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: WorkTitleGenerator(), consecutiveRetryLimit: 5)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: WorkTitleGenerator())
    }
}

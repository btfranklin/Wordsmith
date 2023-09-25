//  Created by B.T. Franklin on 9/24/23

import XCTest
@testable import Wordsmith

class AncientNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: AncientName(syllableCount: 3))
        ExamplesTestUtil.printExamples(using: AncientName(syllableCount: 4))
        ExamplesTestUtil.printExamples(using: AncientName(syllableCount: 5))
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: AncientName(syllableCount: 2), consecutiveRetryLimit: 50)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: AncientName(syllableCount: 3))
    }
}

//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class WeirdNameGeneratorTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: WeirdNameGenerator(syllableCount: 3))
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: WeirdNameGenerator(syllableCount: 2), consecutiveRetryLimit: 50)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: WeirdNameGenerator(syllableCount: 3))
    }
}

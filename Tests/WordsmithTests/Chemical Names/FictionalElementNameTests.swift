//  Created by B.T. Franklin on 11/27/19.

import XCTest
@testable import Wordsmith

class FictionalElementNameTests: XCTestCase {
    
    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: FictionalElementNameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: FictionalElementNameGenerator(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: FictionalElementNameGenerator())
    }
    
}


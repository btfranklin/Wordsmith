//  Created by B.T. Franklin on 11/27/19.

import XCTest
@testable import Wordsmith

class FictionalElementNameTests: XCTestCase {
    
    func testExamples() {
        ExamplesTestUtil.printExamples(using: FictionalElementName())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: FictionalElementName(), consecutiveRetryLimit: 25)
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: FictionalElementName())
    }
    
}


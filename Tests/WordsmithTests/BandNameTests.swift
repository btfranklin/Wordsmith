//  Created by B.T. Franklin on 11/28/19.

import XCTest
@testable import Wordsmith

class BandNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: BandName())
    }
    
    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: BandName())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: BandName())
    }
}


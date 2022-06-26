//  Created by B.T. Franklin on 11/28/19.

import XCTest
@testable import Wordsmith

class BandNameGeneratorTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: BandNameGenerator())
    }
    
    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: BandNameGenerator())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: BandNameGenerator())
    }
}


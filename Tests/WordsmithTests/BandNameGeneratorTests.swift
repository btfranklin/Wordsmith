//  Created by B.T. Franklin on 11/28/19.

import XCTest
@testable import Wordsmith

class BandNameGeneratorTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: BandNameGenerator())
    }
    
    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: BandNameGenerator())
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: BandNameGenerator())
    }
}


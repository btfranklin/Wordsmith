//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class CriminalGangNameGeneratorTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: CriminalGangNameGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: CriminalGangNameGenerator())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: CriminalGangNameGenerator())
    }
}


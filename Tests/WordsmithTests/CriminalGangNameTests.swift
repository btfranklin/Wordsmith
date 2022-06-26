//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class CriminalGangNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: CriminalGangName())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: CriminalGangName())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: CriminalGangName())
    }
}


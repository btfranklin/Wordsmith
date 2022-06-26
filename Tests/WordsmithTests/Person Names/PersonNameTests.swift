//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class PersonNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: PersonName())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: PersonName())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: PersonName())
    }
}

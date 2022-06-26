//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class PersonNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: PersonNameGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: PersonNameGenerator())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: PersonNameGenerator())
    }
}

//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class PersonNameTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: PersonNameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: PersonNameGenerator())
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: PersonNameGenerator())
    }
}

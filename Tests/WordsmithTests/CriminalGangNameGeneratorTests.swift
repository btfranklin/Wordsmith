//  Created by B.T. Franklin on 6/12/22

import XCTest
@testable import Wordsmith

class CriminalGangNameGeneratorTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: CriminalGangNameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: CriminalGangNameGenerator())
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: CriminalGangNameGenerator())
    }
}


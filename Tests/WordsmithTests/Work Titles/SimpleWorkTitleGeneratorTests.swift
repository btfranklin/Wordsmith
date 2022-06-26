//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class SimpleWorkTitleGeneratorTests: XCTestCase {

    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: SimpleWorkTitleGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: SimpleWorkTitleGenerator())
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: SimpleWorkTitleGenerator())
    }
}

//  Created by B.T. Franklin on 6/25/22

import XCTest
@testable import Wordsmith

class SimpleWorkTitleGeneratorTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: SimpleWorkTitleGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: SimpleWorkTitleGenerator())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: SimpleWorkTitleGenerator())
    }
}

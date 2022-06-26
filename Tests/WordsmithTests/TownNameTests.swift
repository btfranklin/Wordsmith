//  Created by B.T. Franklin on 3/23/18

import XCTest
@testable import Wordsmith

class TownNameTests: XCTestCase {
    
    func testExamples() {
        ExamplesTestUtil.printExamples(using: TownName())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: TownName())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: TownName())
    }
}

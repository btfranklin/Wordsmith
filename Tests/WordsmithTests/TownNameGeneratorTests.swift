//  Created by B.T. Franklin on 3/23/18

import XCTest
@testable import Wordsmith

class TownNameGeneratorTests: XCTestCase {
    
    func testExamples() {
        ExamplesTestUtil.printExamples(using: TownNameGenerator())
    }

    func testUniqueness() {
        UniquenessTestUtil.countUniqueValuesProduced(using: TownNameGenerator())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: TownNameGenerator())
    }
}

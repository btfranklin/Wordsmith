//  Created by B.T. Franklin on 3/23/18

import XCTest
@testable import Wordsmith

class TownNameGeneratorTests: XCTestCase {
    
    func testExamples() {
        GeneratorExamplesTestUtil.printExamples(using: TownNameGenerator())
    }

    func testUniqueness() {
        GeneratorUniquenessTestUtil.countUniqueValuesProduced(using: TownNameGenerator())
    }

    func testRepeatableResults() {
        GeneratorRepeatableResultsTestUtil.confirmRepeatableResults(using: TownNameGenerator())
    }
}

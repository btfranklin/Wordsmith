//  Created by B.T. Franklin on 6/27/22

import XCTest
@testable import Wordsmith

class ChemicalCompoundNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: ChemicalCompoundName())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: ChemicalCompoundName())
    }

}

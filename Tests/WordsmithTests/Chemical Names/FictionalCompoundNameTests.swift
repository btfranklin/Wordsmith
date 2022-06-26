//  Created by B.T. Franklin on 6/20/22

import XCTest
@testable import Wordsmith

class FictionalCompoundNameTests: XCTestCase {

    func testExamples() {
        ExamplesTestUtil.printExamples(using: FictionalCompoundName())
    }

    func testRepeatableResults() {
        RepeatableResultsTestUtil.confirmRepeatableResults(using: FictionalCompoundName())
    }

}


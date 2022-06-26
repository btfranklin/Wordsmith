//  Created by B.T. Franklin on 6/12/22

import XCTest
import ControlledChaos
@testable import Wordsmith

enum RepeatableResultsTestUtil {

    static func confirmRepeatableResults(using component: some TextComponent, comparedResultsCount: Int = 100) {
        let seedState = UInt64.random(in: UInt64.min...UInt64.max)
        
        var seededRNG = SeededRandomNumberGenerator(state: seedState)
        var resultList1: [String] = []
        for _ in 1...comparedResultsCount {
            resultList1.append(component.makeText(using: &seededRNG))
        }

        seededRNG = SeededRandomNumberGenerator(state: seedState)
        var resultList2: [String] = []
        for _ in 1...comparedResultsCount {
            resultList2.append(component.makeText(using: &seededRNG))
        }

        XCTAssertEqual(resultList1, resultList2)
    }

}

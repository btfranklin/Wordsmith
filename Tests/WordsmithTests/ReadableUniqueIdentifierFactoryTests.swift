//  Created by B.T. Franklin on 6/26/22

import XCTest
import ControlledChaos
@testable import Wordsmith

class ReadableUniqueIdentifierFactoryTests: XCTestCase {

    func testExamples() {
        for _ in 1...10 {
            print(ReadableUniqueIdentifierFactory.makeIdentifier())
        }
    }

    func testNonRepeatableResults() {
        let seedState = UInt64.random(in: UInt64.min...UInt64.max)

        // Confirm that two short sequences don't match even with the same seed value
        var seededRNG = SeededRandomNumberGenerator(state: seedState)
        var resultList1: [String] = []
        for _ in 1...5 {
            resultList1.append(ReadableUniqueIdentifierFactory.makeIdentifier(using: &seededRNG))
        }
        seededRNG = SeededRandomNumberGenerator(state: seedState)
        var resultList2: [String] = []
        for _ in 1...5 {
            resultList2.append(ReadableUniqueIdentifierFactory.makeIdentifier(using: &seededRNG))
        }
        XCTAssertNotEqual(resultList1, resultList2)

        // Confirm that two results created in rapid succession don't match even with the same seed value
        seededRNG = SeededRandomNumberGenerator(state: seedState)
        let quickResult1 = ReadableUniqueIdentifierFactory.makeIdentifier(using: &seededRNG)
        seededRNG = SeededRandomNumberGenerator(state: seedState)
        let quickResult2 = ReadableUniqueIdentifierFactory.makeIdentifier(using: &seededRNG)
        XCTAssertNotEqual(quickResult1,quickResult2)
    }
}

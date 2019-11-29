//  Created by B.T. Franklin on 11/28/19.

import XCTest
@testable import Wordsmith

class BandNameTests: XCTestCase {
    
    func testInitializer() {
        for _ in 1...100 {
            let bandName = BandName()
            XCTAssertNotNil(bandName.description)
            print(bandName)
        }
    }
    
    func testUniqueness() {
        var generatedValues = Set<BandName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 10 {
            let value = BandName()
            
            if generatedValues.contains(value) {
                consecutiveRetries += 1
            } else {
                generatedValues.insert(value)
                consecutiveRetries = 0
            }
        }
        
        print("Could no longer generate unique values after \(consecutiveRetries) consecutive retries.")
        print("Final count of unique values: \(generatedValues.count)")
    }
    
}


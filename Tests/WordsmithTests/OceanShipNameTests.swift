//  Created by B.T. Franklin on 7/8/18

import XCTest
@testable import Wordsmith

class OceanShipNameTests: XCTestCase {
    
    func testUniqueness() {
        var generatedValues = Set<OceanShipName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 25 {
            let value = OceanShipName()
            
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


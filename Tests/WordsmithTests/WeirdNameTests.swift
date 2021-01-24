//  Created by B.T. Franklin on 3/23/18

import XCTest
@testable import Wordsmith

class WeirdNameTests: XCTestCase {
    
    func testUniqueness() {
        var generatedValues = Set<WeirdName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 500 {
            let value = WeirdName(syllableCount: 2)
            
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


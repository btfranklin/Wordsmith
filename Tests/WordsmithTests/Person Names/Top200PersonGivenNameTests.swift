//  Created by B.T. Franklin on 8/30/19

import XCTest
@testable import Wordsmith

class Top200PersonGivenNameTests: XCTestCase {
    
    func testUniqueness() {
        var generatedValues = Set<Top200PersonGivenName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 1000 {
            let value = Top200PersonGivenName(gender: .male)
            
            if generatedValues.contains(value) {
                consecutiveRetries += 1
            } else {
                generatedValues.insert(value)
                consecutiveRetries = 0
            }
        }
        
        print("Could no longer generate unique male names after \(consecutiveRetries) consecutive retries.")
        print("Final count of unique values: \(generatedValues.count)")
        
        generatedValues.removeAll()
        consecutiveRetries = 0
        
        while consecutiveRetries < 1000 {
            let value = Top200PersonGivenName(gender: .female)
            
            if generatedValues.contains(value) {
                consecutiveRetries += 1
            } else {
                generatedValues.insert(value)
                consecutiveRetries = 0
            }
        }
        
        print("Could no longer generate unique female names after \(consecutiveRetries) consecutive retries.")
        print("Final count of unique values: \(generatedValues.count)")
    }
    
}

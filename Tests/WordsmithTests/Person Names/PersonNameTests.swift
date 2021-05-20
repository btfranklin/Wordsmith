//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class PersonNameTests: XCTestCase {
    
    func testUniqueness() {
        var generatedValues = Set<PersonName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 500 {
            let value = PersonName(gender: .male)
            
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
        
        while consecutiveRetries < 500 {
            let value = PersonName(gender: .female)
            
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

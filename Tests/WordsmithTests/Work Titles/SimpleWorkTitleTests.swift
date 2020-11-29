//  Created by B.T. Franklin on 9/1/19

import XCTest
@testable import Wordsmith

class SimpleWorkTitleTests: XCTestCase {
    
    func testUniqueness() {
        var generatedValues = Set<SimpleWorkTitle>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 10 {
            let value = SimpleWorkTitle()
            
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

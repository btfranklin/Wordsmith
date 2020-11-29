//  Created by B.T. Franklin on 9/1/19

import XCTest
@testable import Wordsmith

class ComplexWorkTitleTests: XCTestCase {
    
    func testUniqueness() {
        var generatedValues = Set<ComplexWorkTitle>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 5 {
            let value = ComplexWorkTitle()
            
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

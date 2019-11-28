//  Created by B.T. Franklin on 11/27/19.

import XCTest
@testable import Wordsmith

class FictionalElementNameTests: XCTestCase {
    
    func testInitializer() {
        for _ in 1...100 {
            let fictionalElementName = FictionalElementName()
            XCTAssertNotNil(fictionalElementName.description)
            print(fictionalElementName)
        }
    }
    
    func testUniqueness() {
        var generatedValues = Set<FictionalElementName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 100 {
            let value = FictionalElementName()
            
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


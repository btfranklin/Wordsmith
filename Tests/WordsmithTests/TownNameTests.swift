//  Created by B.T. Franklin on 3/23/18

import XCTest
@testable import Wordsmith

class TownNameTests: XCTestCase {
    
    func testInitializer() {
        for _ in 1...100 {
            let name = TownName()
            XCTAssertNotNil(name.description)
            print(name)
        }
    }
    
    func testUniqueness() {
        var generatedValues = Set<TownName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 1000 {
            let value = TownName()
            
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

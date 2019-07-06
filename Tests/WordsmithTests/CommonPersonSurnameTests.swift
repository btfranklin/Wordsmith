//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class CommonPersonSurnameTests: XCTestCase {
    
    func testInitializer() {
        for _ in 1...100 {
            let name = CommonPersonSurname()
            XCTAssertNotNil(name.description)
            print(name)
        }
    }
    
    func testUniqueness() {
        var generatedValues = Set<CommonPersonSurname>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 1000 {
            let value = CommonPersonSurname()
            
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

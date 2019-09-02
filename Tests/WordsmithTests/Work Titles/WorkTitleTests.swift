//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class WorkTitleTests: XCTestCase {
    
    func testInitializer() {
        for _ in 1...100 {
            let title = WorkTitle()
            XCTAssertNotNil(title.description)
            print(title)
        }
    }
    
    func testUniqueness() {
        var generatedValues = Set<WorkTitle>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 10 {
            let value = WorkTitle()
            
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

//  Created by B.T. Franklin on 2/27/18

import XCTest
@testable import Wordsmith

class ReadableUniqueIdentifierFactoryTests: XCTestCase {
    
    func testCreateReadableUniqueIdentifier() {
        print("readable unique identifiers:")
        for _ in 0...100 {
            let identifier = ReadableUniqueIdentifierFactory.sharedInstance.createReadableUniqueIdentifier()
            XCTAssertNotNil(identifier)
            print(identifier)
        }
    }
    
}

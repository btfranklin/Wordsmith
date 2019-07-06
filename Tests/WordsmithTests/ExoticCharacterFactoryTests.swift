//  Created by B.T. Franklin on 3/22/18

import XCTest
@testable import Wordsmith

class ExoticCharacterFactoryTests: XCTestCase {
    
    func testGetRandomCharacter() {
        print("random exotic characters:")
        for _ in 0...100 {
            let character = ExoticCharacterFactory.sharedInstance.getRandomCharacter()
            XCTAssertNotNil(character)
            print(character)
        }
    }
    
}


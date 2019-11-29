//  Created by B.T. Franklin on 11/27/19.

import XCTest
@testable import Wordsmith

class FictionalCompoundNameTests: XCTestCase {
    
    func testInitializer() {
        for _ in 1...100 {
            let fictionalCompoundName = FictionalCompoundName()
            XCTAssertNotNil(fictionalCompoundName.description)
            print(fictionalCompoundName)
        }
    }
    
    func testInitializerWithElementNameStringParameters() {
        for _ in 1...100 {
            let component1 = FictionalElementName().description
            let component2 = FictionalElementName().description
            let fictionalCompoundName = FictionalCompoundName(components: [component1, component2])
            XCTAssertNotNil(fictionalCompoundName.description)
            print("\(component1) + \(component2) -> \(fictionalCompoundName)")
        }
    }
    
    func testInitializerWithElementParameters() {
        for _ in 1...100 {
            let component1 = FictionalElementName()
            let component2 = FictionalElementName()
            let fictionalCompoundName = FictionalCompoundName(components: [component1, component2])
            XCTAssertNotNil(fictionalCompoundName.description)
            print("\(component1) + \(component2) -> \(fictionalCompoundName)")
        }
    }

    func testInitializerWithArbitraryStringParameters() {
        for _ in 1...100 {
            let component1 = Verb(tense:.present)
            let component2 = Adjective()
            let fictionalCompoundName = FictionalCompoundName(components: [component1, component2])
            XCTAssertNotNil(fictionalCompoundName.description)
            print("\(component1) + \(component2) -> \(fictionalCompoundName)")
        }
    }
}

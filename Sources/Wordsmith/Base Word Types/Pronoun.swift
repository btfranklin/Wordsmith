//  Created by B.T. Franklin on 8/30/19

import Foundation

public struct Pronoun {
    
    static let singularOptions: [String:Bool] = [
        "he" : true, // present
        "I"  : false, // base
        "it" : true, // present
        "she": true, // present
        "you": false, // base
    ]
    
    static let pluralOptions: [String:Bool] = [
        "they": true, // base
        "we"  : false, // base
        "you" : false // base
    ]
    
    private let value: String
    
    public let isSingular: Bool
    public let isThirdPerson: Bool
    
    public init(singular: Bool) {
        isSingular = singular
        let selectedElement = isSingular ? Pronoun.singularOptions.randomElement()! : Pronoun.pluralOptions.randomElement()!
        value = selectedElement.key
        isThirdPerson = selectedElement.value
    }
    
    public init() {
        self.init(singular: Bool.random())
    }
}

extension Pronoun: CustomStringConvertible {
    public var description: String {
        return value
    }
}

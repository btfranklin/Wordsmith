//  Created by B.T. Franklin on 11/27/19.

import Foundation
import DunesailerUtilities

public struct FictionalCompoundName: Hashable {
    
    static private let prefixes = [
        "mono", "bi", "di", "tri"
    ]
    
    static private func convertNameToCompoundForm(_ name: String) -> String {
        let convertedName: String
        if name.hasSuffix("ium") || name.hasSuffix("ine") || name.hasSuffix("ion") {
            let truncatedName = name.dropLast(3)
            convertedName = "\(truncatedName)\(["ide","ite","ade","ate","ene"].randomElement()!)"
        } else if name.hasSuffix("en") || name.hasSuffix("an") || name.hasSuffix("on") || name.hasSuffix("un") {
            convertedName = "\(name)\(["ide","ite","ade","ate"].randomElement()!)"
        } else {
            convertedName = name
        }
        
        return convertedName
    }
    
    static private func maybeAddPrefix(_ name: String, probability: Int = 25) -> String {
        let result: String
        
        if Int.random(in: 0...100) < probability {
            result = "\(FictionalCompoundName.prefixes.randomElement()!)\(name)"
        } else {
            result = name
        }
        
        return result
    }
    
    private let value: String
    
    public init(components: [CustomStringConvertible]) {
        
        guard components.count > 1 else {
            fatalError("Can only create a compound with at least 2 components")
        }
        
        let shuffledComponents = components.shuffled()
        let component1 = shuffledComponents[0].description.lowercased()
        let component2 = shuffledComponents[1].description.lowercased()
        
        if component1 == component2 {
            let convertedName = FictionalCompoundName.convertNameToCompoundForm(component1)
            value = Bool.random()
                ? convertedName
                : "\(FictionalCompoundName.prefixes.randomElement()!)\(convertedName)"
        } else {
            var word1 = component1
            var word2 = FictionalCompoundName.convertNameToCompoundForm(component2)
            
            word1 = FictionalCompoundName.maybeAddPrefix(word1, probability: 10)
            word2 = FictionalCompoundName.maybeAddPrefix(word2)

            value = "\(word1) \(word2)"
        }
        
    }
    
    public init() {
        var components = [FictionalElementName]()
        
        for _ in 1...2 {
            components.append(FictionalElementName())
        }
        
        self.init(components: components)
    }
    
}

extension FictionalCompoundName: CustomStringConvertible {
    public var description: String {
        value
    }
}

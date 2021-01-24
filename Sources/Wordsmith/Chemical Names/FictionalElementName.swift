//  Created by B.T. Franklin on 11/27/19.

import Foundation
import DunesailerUtilities

public struct FictionalElementName: Hashable {
    
    private static let rootWordProviders: [() -> CustomStringConvertible] = [
        {
            CommonPersonGivenName()
        },
        {
            CommonPersonSurname()
        },
        {
            WeirdName(syllableCount: 2, allowHyphen: false, allowApostrophe: false)
        },
        {
            WeirdName(syllableCount: 3, allowHyphen: false, allowApostrophe: false)
        },
    ]
    
    private let value: String
    
    public init() {
        let rootWord = FictionalElementName.rootWordProviders.randomElement()!().description.lowercased()
        let rootWordLastLetter = rootWord.last!

        switch rootWordLastLetter {
        case "a","o", "u":
            value = Bool.random() ? "\(rootWord)gen" : "\(rootWord)n"
        case "e":
            value = Bool.random() ? "\(rootWord.dropLast(1))ium" : "\(rootWord)on"
        case "h","v","x":
            value = Bool.random() ? "\(rootWord.dropLast(1))ion" : "\(rootWord)\(["ium","ine"].randomElement()!)"
        case "k","m","n":
            value = "\(rootWord)\(["ium","ine","ion"].randomElement()!)"
        case "y","i":
            value = Bool.random() ? "\(rootWord)gen" : "\(rootWord.dropLast(1))ium"
        default:
            value = "\(rootWord)\(["ium","ine","on"].randomElement()!)"
        }
    }
    
}

extension FictionalElementName: CustomStringConvertible {
    public var description: String {
        value
    }
}

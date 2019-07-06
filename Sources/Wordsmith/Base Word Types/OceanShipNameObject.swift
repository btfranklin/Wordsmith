//  Created by B.T. Franklin on 7/8/18

import Foundation

public struct OceanShipNameObject {
    
    static let options: [String] = [
        "blade",
        "breeze",
        "concubine",
        "consort",
        "crown",
        "dagger",
        "dancer",
        "demon",
        "devil",
        "disciple",
        "dragon",
        "dream",
        "dryad",
        "flame",
        "fox",
        "ghost",
        "gypsy",
        "harpy",
        "heart",
        "hound",
        "jewel",
        "knave",
        "knight",
        "kraken",
        "lance",
        "mage",
        "maiden",
        "nightmare",
        "nymph",
        "paladin",
        "pearl",
        "princess",
        "queen",
        "rogue",
        "rose",
        "serpent",
        "shield",
        "spear",
        "spirit",
        "stallion",
        "star",
        "storm",
        "sword",
        "treasure",
        "warlock",
        "wench",
        "widow",
        "witch",
        "wizard",
        "wolf",
    ]
    
    private let value: String
    
    public init() {
        value = OceanShipNameObject.options.randomElement()!
    }
    
}

extension OceanShipNameObject: CustomStringConvertible {
    public var description: String {
        return value
    }
}

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
        "destiny",
        "devil",
        "disciple",
        "dragon",
        "dream",
        "dryad",
        "falcon",
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
        "revenant",
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
        "trinity",
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

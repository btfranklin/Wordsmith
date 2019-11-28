//  Created by B.T. Franklin on 8/30/19

import Foundation

public struct ShipNameAdjective {
    
    static let options: [String] = [
        "adamantine",
        "adventurous",
        "ancient",
        "angry",
        "beastly",
        "beautiful",
        "courageous",
        "dastardly",
        "draconian",
        "elder",
        "enchanted",
        "enchanting",
        "heroic",
        "immortal",
        "indestructible",
        "invincible",
        "magnificent",
        "malicious",
        "mighty",
        "nefarious",
        "perfect",
        "pious",
        "precious",
        "priceless",
        "relentless",
        "righteous",
        "saintly",
        "sinful",
        "sinister",
        "sylvan",
        "terrible",
        "terrific",
        "unstoppable",
        "unyielding",
        "valiant",
        "vengeful",
        "virtuous",
        "wandering",
        "windward",
        "wrathful",
        "yearning",
        "youthful",
    ]
    
    private let value: String
    
    public init() {
        value = ShipNameAdjective.options.randomElement()!
    }
    
}

extension ShipNameAdjective: CustomStringConvertible {
    public var description: String {
        value
    }
}

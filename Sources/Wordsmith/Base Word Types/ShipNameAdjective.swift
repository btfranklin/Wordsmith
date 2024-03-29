//  Created by B.T. Franklin on 6/11/22

public struct ShipNameAdjective: TextComponent {

    private static let options: [String] = [
        "adamantine",
        "adventurous",
        "ancient",
        "angry",
        "beastly",
        "beautiful",
        "courageous",
        "dancing",
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

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        ShipNameAdjective.options.randomElement(using: &randomNumberGenerator)!
    }
}

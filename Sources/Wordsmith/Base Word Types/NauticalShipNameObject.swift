//  Created by B.T. Franklin on 6/11/22

public struct NauticalShipNameObject: TextComponent {

    private static let options: [String] = [
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

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        NauticalShipNameObject.options.randomElement(using: &randomNumberGenerator)!
    }
}

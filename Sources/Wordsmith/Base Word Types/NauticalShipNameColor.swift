//  Created by B.T. Franklin on 6/11/22

public struct NauticalShipNameColor: TextComponent {

    private static let options: [String] = [
        "amber",
        "black",
        "blue",
        "bronze",
        "copper",
        "golden",
        "gray",
        "green",
        "ivory",
        "jade",
        "obsidian",
        "red",
        "silver",
        "white",
    ]

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        NauticalShipNameColor.options.randomElement(using: &randomNumberGenerator)!
    }
}

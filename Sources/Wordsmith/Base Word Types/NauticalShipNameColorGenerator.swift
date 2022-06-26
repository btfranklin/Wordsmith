//  Created by B.T. Franklin on 6/11/22

public struct NauticalShipNameColorGenerator: TextComponent {

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
        NauticalShipNameColorGenerator.options.randomElement(using: &randomNumberGenerator)!
    }
}

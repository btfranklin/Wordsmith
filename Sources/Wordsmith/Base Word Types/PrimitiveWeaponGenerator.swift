//  Created by B.T. Franklin on 6/11/22

public struct PrimitiveWeaponGenerator: TextComponent {

    private static let options: [String] = [
        "sword",
        "blade",
        "mace",
        "hammer",
        "knife",
        "dagger",
        "axe",
        "halberd",
        "glaive",
        "spear",
        "lance",
        "pike",
        "bow",
        "crossbow"
    ]

    private let isPlural: Bool

    public init(isPlural: Bool = false) {
        self.isPlural = isPlural
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var value = PrimitiveWeaponGenerator.options.randomElement(using: &randomNumberGenerator)!

        if isPlural {
            if value.hasSuffix("ife") {
                value = value.dropLast(2).description
                value += "ves"
            } else {
                value += "s"
            }
        }

        return value
    }
}

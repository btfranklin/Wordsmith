//  Created by B.T. Franklin on 6/11/22

public struct MartialSocialConcept: TextComponent {

    private static let options: [String] = [
        "ambush",
        "anger",
        "betrayal",
        "bravery",
        "conquest",
        "courage",
        "death",
        "deception",
        "delight",
        "despair",
        "devastation",
        "discipline",
        "domination",
        "famine",
        "freedom",
        "fury",
        "glory",
        "hatred",
        "honor",
        "independence",
        "justice",
        "liberation",
        "liberty",
        "mercy",
        "murder",
        "pestilence",
        "plunder",
        "pride",
        "rage",
        "regret",
        "reprisal",
        "retribution",
        "revenge",
        "righteousness",
        "slaughter",
        "terror",
        "transgression",
        "treachery",
        "treason",
        "triumph",
        "vengeance",
        "victory",
        "wrath",
    ]

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        MartialSocialConcept.options.randomElement(using: &randomNumberGenerator)!
    }
}

//  Created by B.T. Franklin on 6/11/22

public struct UCBerkeleyEmotionGenerator: TextComponent {

    private static let options: [String] = [
        "admiration",
        "adoration",
        "appreciation",
        "amusement",
        "anxiety",
        "awe",
        "awkwardness",
        "boredom",
        "calmness",
        "confusion",
        "craving",
        "disgust",
        "empathy",
        "entrancement",
        "envy",
        "excitement",
        "fear",
        "horror",
        "interest",
        "joy",
        "nostalgia",
        "romance",
        "sadness",
        "satisfaction",
        "lust",
        "sympathy",
        "triumph",
    ]

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        UCBerkeleyEmotionGenerator.options.randomElement(using: &randomNumberGenerator)!
    }
}

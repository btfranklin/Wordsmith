//  Created by B.T. Franklin on 6/11/22

public struct LocationAdjectiveGenerator: TextComponent {

    private static let options: [String] = [
        "ancient",
        "beautiful",
        "blissful",
        "breezy",
        "charming",
        "cloudy",
        "colorful",
        "dangerous",
        "dreamy",
        "dry",
        "enchanted",
        "enchanting",
        "fertile",
        "floral",
        "foggy",
        "forgotten",
        "freezing",
        "frozen",
        "ghostly",
        "gloomy",
        "glorious",
        "grand",
        "grassy",
        "haunted",
        "hilly",
        "looming",
        "majestic",
        "misty",
        "moonshine",
        "muddy",
        "mysterious",
        "mystical",
        "peaceful",
        "quiet",
        "rainy",
        "reedy",
        "rocky",
        "sandy",
        "shady",
        "silent",
        "snowy",
        "stony",
        "stormy",
        "sunny",
        "windswept",
        "windy",
    ]

    public init() {}
    
    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        LocationAdjectiveGenerator.options.randomElement(using: &randomNumberGenerator)!
    }
}

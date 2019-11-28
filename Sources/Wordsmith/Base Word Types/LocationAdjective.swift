//  Created by B.T. Franklin on 3/23/18

import Foundation

public struct LocationAdjective {
    
    static let options: [String] = [
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
    
    private let value: String
    
    public init() {
        value = LocationAdjective.options.randomElement()!
    }
    
}

extension LocationAdjective: CustomStringConvertible {
    public var description: String {
        value
    }
}


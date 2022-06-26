//  Created by B.T. Franklin on 6/11/22

public struct TimeOfDay: TextComponent {

    private static let options: [String] = [
        "midnight",
        "night",
        "morning",
        "dawn",
        "sunrise",
        "daytime",
        "midday",
        "afternoon",
        "evening",
        "dusk",
        "twilight",
        "sunset",
    ]

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        TimeOfDay.options.randomElement(using: &randomNumberGenerator)!
    }
}

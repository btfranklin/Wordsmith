//  Created by B.T. Franklin on 6/12/22

public struct TownNameGenerator: TextComponent {

    static let nameRarePrefixWords = [
        "Saint", "Mount", "Lake"
    ]

    static let namePrefixWords = [
        "Fort", "Port", "Cape"
    ]

    static let nameRareSuffixWords = [
        "River", "Hill", "Town", "Beach", "Village"
    ]

    static let nameSuffixWords = [
        "Bay", "Point", "City", "Park"
    ]

    static let nameSuffixes = [
        "ton", "burg", "ville", "town", "dale"
    ]

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let generator: TextComponent

        switch Int.random(in: 1...100, using: &randomNumberGenerator) {
        case 1...9:
            generator = Text(separator: " ") {
                SurnameGenerator()
                TownNameGenerator.nameSuffixWords.randomElement(using: &randomNumberGenerator)!
            }

        case 10...19:
            generator = Text(separator: " ") {
                TownNameGenerator.namePrefixWords.randomElement(using: &randomNumberGenerator)!
                SurnameGenerator()
            }

        case 20...24:
            generator = Text(separator: " ") {
                SurnameGenerator()
                TownNameGenerator.nameRareSuffixWords.randomElement(using: &randomNumberGenerator)!
            }

        case 25...29:
            generator = Text(separator: " ") {
                TownNameGenerator.nameRarePrefixWords.randomElement(using: &randomNumberGenerator)!
                SurnameGenerator()
            }

        case 30...31:
            generator = Text(separator: " ") {
                "New"
                Text {
                    SurnameGenerator()
                    TownNameGenerator.nameSuffixes.randomElement(using: &randomNumberGenerator)!
                }
            }

        case 32...35:
            generator = Text(separator: " ") {
                LocationAdjectiveGenerator().firstUppercased()
                TownNameGenerator.nameSuffixWords.randomElement(using: &randomNumberGenerator)!
            }

        case 36...38:
            generator = Text(separator: " ") {
                LocationAdjectiveGenerator().firstUppercased()
                TownNameGenerator.nameRareSuffixWords.randomElement(using: &randomNumberGenerator)!
            }

        default:
            generator = Text {
                SurnameGenerator()
                TownNameGenerator.nameSuffixes.randomElement(using: &randomNumberGenerator)!
            }
        }

        return generator.makeText(using: &randomNumberGenerator)
    }
}

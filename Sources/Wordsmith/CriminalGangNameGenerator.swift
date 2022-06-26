//  Created by B.T. Franklin on 6/12/22

import ControlledChaos

public struct CriminalGangNameGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var generator: TextComponent

        let beginsWithPersonName = Bool.random(probability: 0.25, using: &randomNumberGenerator)
        if beginsWithPersonName {

            if Bool.random(using: &randomNumberGenerator) {
                generator = Text(separator: " ") {
                    GivenNameGenerator().possessiveForm()
                    VillainousPersonNounGenerator(isPlural: true)
                }.titleCased()
            } else {
                generator = Text(separator: " ") {
                    GivenNameGenerator().possessiveForm()
                    PrimitiveWeaponGenerator(isPlural: true)
                }.titleCased()
            }

        } else {
            switch Int.random(in: 1...6, using: &randomNumberGenerator) {
            case 1:
                generator = Text(separator: " ") {
                    MartialSocialConceptGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            case 2:
                generator = Text(separator: " ") {
                    PrimitiveWeaponGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            case 3:
                generator = Text(separator: " ") {
                    VillainousPersonNounGenerator(isPlural: true)
                    "of"
                    TownNameGenerator()
                }

            case 4:
                generator = Text(separator: " ") {
                    TownNameGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            case 5:
                generator = Text(separator: " ") {
                    AdjectiveGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            default:
                generator = Text(separator: " ") {
                    AdjectiveGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                    "of"
                    TownNameGenerator()
                }
            }

            generator = Text(separator: " ") {
                "the"
                generator.titleCased()
            }
        }

        return generator.makeText(using: &randomNumberGenerator)
    }
}

//  Created by B.T. Franklin on 6/12/22

import ControlledChaos

public struct CriminalGangNameGenerator: TextGeneratorComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var generator: TextGeneratorComponent

        let beginsWithPersonName = Bool.random(probability: 0.25, using: &randomNumberGenerator)
        if beginsWithPersonName {

            if Bool.random(using: &randomNumberGenerator) {
                generator = TextGenerator(separator: " ") {
                    GivenNameGenerator().possessiveForm()
                    VillainousPersonNounGenerator(isPlural: true)
                }.titleCased()
            } else {
                generator = TextGenerator(separator: " ") {
                    GivenNameGenerator().possessiveForm()
                    PrimitiveWeaponGenerator(isPlural: true)
                }.titleCased()
            }

        } else {
            switch Int.random(in: 1...6, using: &randomNumberGenerator) {
            case 1:
                generator = TextGenerator(separator: " ") {
                    MartialSocialConceptGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            case 2:
                generator = TextGenerator(separator: " ") {
                    PrimitiveWeaponGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            case 3:
                generator = TextGenerator(separator: " ") {
                    VillainousPersonNounGenerator(isPlural: true)
                    "of"
                    TownNameGenerator()
                }

            case 4:
                generator = TextGenerator(separator: " ") {
                    TownNameGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            case 5:
                generator = TextGenerator(separator: " ") {
                    AdjectiveGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                }

            default:
                generator = TextGenerator(separator: " ") {
                    AdjectiveGenerator()
                    VillainousPersonNounGenerator(isPlural: true)
                    "of"
                    TownNameGenerator()
                }
            }

            generator = TextGenerator(separator: " ") {
                "the"
                generator.titleCased()
            }
        }

        return generator.makeText(using: &randomNumberGenerator)
    }
}

//  Created by B.T. Franklin on 6/12/22

import ControlledChaos

public struct CriminalGangName: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var generator: TextComponent

        let beginsWithPersonName = Bool.random(probability: 0.25, using: &randomNumberGenerator)
        if beginsWithPersonName {

            if Bool.random(using: &randomNumberGenerator) {
                generator = Text(separator: " ") {
                    GivenName().possessiveForm()
                    VillainousPersonNoun(isPlural: true)
                }.titleCased()
            } else {
                generator = Text(separator: " ") {
                    GivenName().possessiveForm()
                    PrimitiveWeapon(isPlural: true)
                }.titleCased()
            }

        } else {
            switch Int.random(in: 1...6, using: &randomNumberGenerator) {
            case 1:
                generator = Text(separator: " ") {
                    MartialSocialConcept()
                    VillainousPersonNoun(isPlural: true)
                }

            case 2:
                generator = Text(separator: " ") {
                    PrimitiveWeapon()
                    VillainousPersonNoun(isPlural: true)
                }

            case 3:
                generator = Text(separator: " ") {
                    VillainousPersonNoun(isPlural: true)
                    "of"
                    TownName()
                }

            case 4:
                generator = Text(separator: " ") {
                    TownName()
                    VillainousPersonNoun(isPlural: true)
                }

            case 5:
                generator = Text(separator: " ") {
                    Adjective()
                    VillainousPersonNoun(isPlural: true)
                }

            default:
                generator = Text(separator: " ") {
                    Adjective()
                    VillainousPersonNoun(isPlural: true)
                    "of"
                    TownName()
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

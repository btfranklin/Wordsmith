//  Created by B.T. Franklin on 6/12/22

import ControlledChaos

public struct CriminalGangName: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var component: TextComponent

        let beginsWithPersonName = Bool.random(probability: 0.25, using: &randomNumberGenerator)
        if beginsWithPersonName {

            component = Text(separator: " ") {
                GivenName().possessiveForm()
                OneOf {
                    VillainousPersonNoun(isPlural: true)
                    PrimitiveWeapon(isPlural: true)
                }
            }.titleCased()

        } else {

            component = Text(separator: " ") {
                "the"
                OneOf {
                    Text(separator: " ") {
                        MartialSocialConcept()
                        VillainousPersonNoun(isPlural: true)
                    }

                    Text(separator: " ") {
                        PrimitiveWeapon()
                        VillainousPersonNoun(isPlural: true)
                    }

                    Text(separator: " ") {
                        VillainousPersonNoun(isPlural: true)
                        "of"
                        TownName()
                    }

                    Text(separator: " ") {
                        TownName()
                        VillainousPersonNoun(isPlural: true)
                    }

                    Text(separator: " ") {
                        Adjective()
                        VillainousPersonNoun(isPlural: true)
                    }

                    Text(separator: " ") {
                        Adjective()
                        VillainousPersonNoun(isPlural: true)
                        "of"
                        TownName()
                    }
                }.titleCased()
            }
        }

        return component.makeText(using: &randomNumberGenerator)
    }
}

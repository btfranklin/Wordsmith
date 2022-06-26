//  Created by B.T. Franklin on 6/18/22

public struct SimpleWorkTitleGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            NounGenerator(isPlural: Bool.random(using: &randomNumberGenerator))

            NounGenerator().prefixedByArticle()

            NounGenerator().prefixedByDeterminer()

            AdjectiveGenerator()

            AdverbGenerator()

            VerbGenerator(tense:.presentPerfect)

            PersonNameGenerator()

            TownNameGenerator()

            UCBerkeleyEmotionGenerator()

            UCBerkeleyEmotionGenerator().prefixedByDeterminer()

            CriminalGangNameGenerator()

            Text(separator: " ") {
                OneOf {
                    UCBerkeleyEmotionGenerator()
                    MartialSocialConceptGenerator()
                }
                "in"
                TownNameGenerator()
            }

            Text(separator: " ") {
                AdjectiveGenerator()
                VerbGenerator(tense: .presentPerfect)
            }

            Text(separator: " ") {
                TimeOfDayGenerator()
                VerbGenerator(tense: .present)
            }

            Text(separator: " ") {
                TimeOfDayGenerator()
                NounGenerator(isPlural: Bool.random(using: &randomNumberGenerator))
            }

            Text(separator: " ") {
                AdjectiveGenerator()
                NounGenerator(isPlural: Bool.random(using: &randomNumberGenerator))
            }

            Text(separator: " ") {
                AdjectiveGenerator().prefixedByArticle()
                NounGenerator()
            }

            Text(separator: " ") {
                AdjectiveGenerator().prefixedByDeterminer()
                NounGenerator()
            }

            Text(separator: " ") {
                MartialSocialConceptGenerator()
                "and"
                MartialSocialConceptGenerator()
            }

            Text(separator: " ") {
                OneOf {
                    "A Treatise on"
                    "On"
                    "A Discussion of"
                    "An Analysis of"
                    "Commentary on"
                    "An Examination of"
                }
                OneOf {
                    MartialSocialConceptGenerator()
                    NounGenerator(isPlural: true)
                }
            }

            Text(separator: " ") {
                "The"
                Maybe {
                    AdjectiveGenerator()
                }
                OneOf {
                    "Adventures"
                    "Journey"
                    "Journeys"
                    "Travels"
                    "Tale"
                    "Voyage"
                }
                "of the"
                Text {
                    "'"
                    NauticalShipNameGenerator()
                    "'"
                }
            }

            Text(separator: " ") {
                "The"
                Maybe {
                    AdjectiveGenerator()
                }
                OneOf {
                    "Adventures"
                    "Journey"
                    "Journeys"
                    "Travels"
                    "Tale"
                    "Escapades"
                }
                "of"
                PersonNameGenerator()
            }

            Text(separator: " ") {
                "The"
                Maybe {
                    AdjectiveGenerator()
                }
                NounGenerator(isPlural: Bool.random(using: &randomNumberGenerator))
                OneOf {
                    "in"
                    "of"
                }
                TownNameGenerator()
            }

        }.titleCased().makeText(using: &randomNumberGenerator)
    }
}

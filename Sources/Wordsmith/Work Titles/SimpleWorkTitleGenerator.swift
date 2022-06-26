//  Created by B.T. Franklin on 6/18/22

public struct SimpleWorkTitleGenerator: TextGeneratorComponent {

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

            TextGenerator(separator: " ") {
                OneOf {
                    UCBerkeleyEmotionGenerator()
                    MartialSocialConceptGenerator()
                }
                "in"
                TownNameGenerator()
            }

            TextGenerator(separator: " ") {
                AdjectiveGenerator()
                VerbGenerator(tense: .presentPerfect)
            }

            TextGenerator(separator: " ") {
                TimeOfDayGenerator()
                VerbGenerator(tense: .present)
            }

            TextGenerator(separator: " ") {
                TimeOfDayGenerator()
                NounGenerator(isPlural: Bool.random(using: &randomNumberGenerator))
            }

            TextGenerator(separator: " ") {
                AdjectiveGenerator()
                NounGenerator(isPlural: Bool.random(using: &randomNumberGenerator))
            }

            TextGenerator(separator: " ") {
                AdjectiveGenerator().prefixedByArticle()
                NounGenerator()
            }

            TextGenerator(separator: " ") {
                AdjectiveGenerator().prefixedByDeterminer()
                NounGenerator()
            }

            TextGenerator(separator: " ") {
                MartialSocialConceptGenerator()
                "and"
                MartialSocialConceptGenerator()
            }

            TextGenerator(separator: " ") {
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

            TextGenerator(separator: " ") {
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
                TextGenerator {
                    "'"
                    NauticalShipNameGenerator()
                    "'"
                }
            }

            TextGenerator(separator: " ") {
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

            TextGenerator(separator: " ") {
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

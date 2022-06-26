//  Created by B.T. Franklin on 6/18/22

public struct SimpleWorkTitle: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            Noun(isPlural: Bool.random(using: &randomNumberGenerator))

            Noun().prefixedByArticle()

            Noun().prefixedByDeterminer()

            Adjective()

            Adverb()

            Verb(tense:.presentPerfect)

            PersonName()

            TownName()

            UCBerkeleyEmotion()

            UCBerkeleyEmotion().prefixedByDeterminer()

            CriminalGangName()

            Text(separator: " ") {
                OneOf {
                    UCBerkeleyEmotion()
                    MartialSocialConcept()
                }
                "in"
                TownName()
            }

            Text(separator: " ") {
                Adjective()
                Verb(tense: .presentPerfect)
            }

            Text(separator: " ") {
                TimeOfDay()
                Verb(tense: .present)
            }

            Text(separator: " ") {
                TimeOfDay()
                Noun(isPlural: Bool.random(using: &randomNumberGenerator))
            }

            Text(separator: " ") {
                Adjective()
                Noun(isPlural: Bool.random(using: &randomNumberGenerator))
            }

            Text(separator: " ") {
                Adjective().prefixedByArticle()
                Noun()
            }

            Text(separator: " ") {
                Adjective().prefixedByDeterminer()
                Noun()
            }

            Text(separator: " ") {
                MartialSocialConcept()
                "and"
                MartialSocialConcept()
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
                    MartialSocialConcept()
                    Noun(isPlural: true)
                }
            }

            Text(separator: " ") {
                "The"
                Maybe {
                    Adjective()
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
                    NauticalShipName()
                    "'"
                }
            }

            Text(separator: " ") {
                "The"
                Maybe {
                    Adjective()
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
                PersonName()
            }

            Text(separator: " ") {
                "The"
                Maybe {
                    Adjective()
                }
                Noun(isPlural: Bool.random(using: &randomNumberGenerator))
                OneOf {
                    "in"
                    "of"
                }
                TownName()
            }

        }.titleCased().makeText(using: &randomNumberGenerator)
    }
}

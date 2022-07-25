//  Created by B.T. Franklin on 6/20/22

public struct UnusualWorkTitle: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            Text(separator: " ") {
                UCBerkeleyEmotion()
                Adverb()
                Verb(tense: .present)
            }

            Text(separator: " ") {
                UCBerkeleyEmotion()
                "and"
                UCBerkeleyEmotion()
            }

            Text(separator: " ") {
                UCBerkeleyEmotion()
                Maybe {
                    "and "
                    UCBerkeleyEmotion()
                }
                "in"
                TownName()
            }

            Text(separator: " ") {
                Text {
                    "'"
                    SimpleWorkTitle()
                    "'"
                }
                OneOf {
                    "Revisited"
                    "Revised"
                    "Reimagined"
                    "Renewed"
                    "Rethought"
                    "Redux"
                }
            }

            Text(separator: " ") {
                Verb(tense:.presentPerfect)
                Noun().prefixedByDeterminer()
            }

            Text(separator: " ") {
                OneOf {
                    "When"
                    "Where"
                    "Why"
                    "While"
                    "As"
                    "Until"
                    "Because"
                }
                Noun().prefixedByArticle()
                Verb(tense:.present)
            }

            Text(separator: " ") {
                OneOf {
                    "When"
                    "Where"
                    "Why"
                    "While"
                    "As"
                    "Until"
                    "Because"
                }

                Either {
                    OneOf {
                        Text(separator: " ") {
                            Pronoun(isSingular: false, isThirdPerson: Bool.random(using: &randomNumberGenerator))
                            Verb(tense: .base)
                        }
                        Text(separator: " ") {
                            Pronoun(isSingular: true, isThirdPerson: false)
                            Verb(tense: .base)
                        }
                        Text(separator: " ") {
                            Pronoun(isSingular: true, isThirdPerson: true)
                            Verb(tense: .present)
                        }
                    }

                    Text(separator: " ") {
                        Pronoun(isSingular: Bool.random(using: &randomNumberGenerator), isThirdPerson: Bool.random(using: &randomNumberGenerator))
                        Verb(tense: .past)
                    }
                }
            }

            Text {
                Adjective()
                Maybe {
                    ", "
                    Adjective()
                    ","
                }
                " and "
                Adjective()
            }

            Text(separator: " ") {
                Noun().prefixedByDeterminer()
                OneOf {
                    Verb(tense: .present)

                    Text(separator: " ") {
                        OneOf {
                            "Will"
                            "Shall"
                            "Can"
                            "Must"
                            "May"
                        }
                        Verb()
                    }

                    Text(separator: " ") {
                        "Is"
                        Verb(tense:.presentPerfect)
                    }

                    Text(separator: " ") {
                        "Has"
                        Verb(tense:.pastParticiple)
                    }
                }
            }

            Either {
                Text(separator: " ") {
                    Noun()
                    "and"
                    Noun()
                }
                Text(separator: " ") {
                    Noun().prefixedByDeterminer()
                    "and"
                    Noun().prefixedByDeterminer()
                }
            }

            Text(separator: " ") {
                Text {
                    MartialSocialConcept()
                    ":"
                }
                UnusualWorkTitle()
            }

        }.titleCased().makeText(using: &randomNumberGenerator)
    }
}

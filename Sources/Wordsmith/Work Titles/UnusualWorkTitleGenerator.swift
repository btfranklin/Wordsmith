//  Created by B.T. Franklin on 6/20/22

public struct UnusualWorkTitleGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            Text(separator: " ") {
                UCBerkeleyEmotionGenerator()
                AdverbGenerator()
                VerbGenerator(tense: .present)
            }

            Text(separator: " ") {
                UCBerkeleyEmotionGenerator()
                "and"
                UCBerkeleyEmotionGenerator()
            }

            Text(separator: " ") {
                UCBerkeleyEmotionGenerator()
                Maybe {
                    "and "
                    UCBerkeleyEmotionGenerator()
                }
                "in"
                TownNameGenerator()
            }

            Text(separator: " ") {
                Text {
                    "'"
                    SimpleWorkTitleGenerator()
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
                VerbGenerator(tense:.presentPerfect)
                NounGenerator().prefixedByDeterminer()
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
                NounGenerator().prefixedByArticle()
                VerbGenerator(tense:.present)
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

                OneOf {
                    OneOf {
                        Text(separator: " ") {
                            PronounGenerator(isSingular: false, isThirdPerson: Bool.random(using: &randomNumberGenerator))
                            VerbGenerator(tense: .base)
                        }
                        Text(separator: " ") {
                            PronounGenerator(isSingular: true, isThirdPerson: false)
                            VerbGenerator(tense: .base)
                        }
                        Text(separator: " ") {
                            PronounGenerator(isSingular: true, isThirdPerson: true)
                            VerbGenerator(tense: .present)
                        }
                    }

                    Text(separator: " ") {
                        PronounGenerator(isSingular: Bool.random(using: &randomNumberGenerator), isThirdPerson: Bool.random(using: &randomNumberGenerator))
                        VerbGenerator(tense: .past)
                    }
                }
            }

            Text {
                AdjectiveGenerator()
                Maybe {
                    ", "
                    AdjectiveGenerator()
                    ","
                }
                " and "
                AdjectiveGenerator()
            }

            Text(separator: " ") {
                NounGenerator().prefixedByDeterminer()
                OneOf {
                    VerbGenerator(tense: .present)

                    Text(separator: " ") {
                        OneOf {
                            "Will"
                            "Shall"
                            "Can"
                            "Must"
                            "May"
                        }
                        VerbGenerator()
                    }

                    Text(separator: " ") {
                        "Is"
                        VerbGenerator(tense:.presentPerfect)
                    }

                    Text(separator: " ") {
                        "Has"
                        VerbGenerator(tense:.pastParticiple)
                    }
                }
            }

            OneOf {
                Text(separator: " ") {
                    NounGenerator()
                    "and"
                    NounGenerator()
                }
                Text(separator: " ") {
                    NounGenerator().prefixedByDeterminer()
                    "and"
                    NounGenerator().prefixedByDeterminer()
                }
            }

        }.titleCased().makeText(using: &randomNumberGenerator)
    }
}

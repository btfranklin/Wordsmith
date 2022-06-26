//  Created by B.T. Franklin on 6/20/22

public struct UnusualWorkTitleGenerator: TextGeneratorComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            TextGenerator(separator: " ") {
                UCBerkeleyEmotionGenerator()
                AdverbGenerator()
                VerbGenerator(tense: .present)
            }

            TextGenerator(separator: " ") {
                UCBerkeleyEmotionGenerator()
                "and"
                UCBerkeleyEmotionGenerator()
            }

            TextGenerator(separator: " ") {
                UCBerkeleyEmotionGenerator()
                Maybe {
                    "and "
                    UCBerkeleyEmotionGenerator()
                }
                "in"
                TownNameGenerator()
            }

            TextGenerator(separator: " ") {
                TextGenerator {
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

            TextGenerator(separator: " ") {
                VerbGenerator(tense:.presentPerfect)
                NounGenerator().prefixedByDeterminer()
            }

            TextGenerator(separator: " ") {
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

            TextGenerator(separator: " ") {
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
                        TextGenerator(separator: " ") {
                            PronounGenerator(isSingular: false, isThirdPerson: Bool.random(using: &randomNumberGenerator))
                            VerbGenerator(tense: .base)
                        }
                        TextGenerator(separator: " ") {
                            PronounGenerator(isSingular: true, isThirdPerson: false)
                            VerbGenerator(tense: .base)
                        }
                        TextGenerator(separator: " ") {
                            PronounGenerator(isSingular: true, isThirdPerson: true)
                            VerbGenerator(tense: .present)
                        }
                    }

                    TextGenerator(separator: " ") {
                        PronounGenerator(isSingular: Bool.random(using: &randomNumberGenerator), isThirdPerson: Bool.random(using: &randomNumberGenerator))
                        VerbGenerator(tense: .past)
                    }
                }
            }

            TextGenerator {
                AdjectiveGenerator()
                Maybe {
                    ", "
                    AdjectiveGenerator()
                    ","
                }
                " and "
                AdjectiveGenerator()
            }

            TextGenerator(separator: " ") {
                NounGenerator().prefixedByDeterminer()
                OneOf {
                    VerbGenerator(tense: .present)

                    TextGenerator(separator: " ") {
                        OneOf {
                            "Will"
                            "Shall"
                            "Can"
                            "Must"
                            "May"
                        }
                        VerbGenerator()
                    }

                    TextGenerator(separator: " ") {
                        "Is"
                        VerbGenerator(tense:.presentPerfect)
                    }

                    TextGenerator(separator: " ") {
                        "Has"
                        VerbGenerator(tense:.pastParticiple)
                    }
                }
            }

            OneOf {
                TextGenerator(separator: " ") {
                    NounGenerator()
                    "and"
                    NounGenerator()
                }
                TextGenerator(separator: " ") {
                    NounGenerator().prefixedByDeterminer()
                    "and"
                    NounGenerator().prefixedByDeterminer()
                }
            }

        }.titleCased().makeText(using: &randomNumberGenerator)
    }
}

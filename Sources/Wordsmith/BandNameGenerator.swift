//  Created by B.T. Franklin on 6/12/22

public struct BandNameGenerator: TextGeneratorComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            TextGenerator(separator: " ") {
                "The"
                AdjectiveGenerator().capitalized()
            }

            TextGenerator(separator: " ") {
                "The"
                NounGenerator().capitalized()
            }

            TextGenerator(separator: " ") {
                "The"
                NounGenerator(isPlural: true).capitalized()
            }

            TextGenerator(separator: " ") {
                AdjectiveGenerator()
                NounGenerator()
            }.capitalized()

            TextGenerator(separator: " ") {
                "The"
                AdjectiveGenerator()
                NounGenerator(isPlural: true)
            }.capitalized()

            TextGenerator(separator: " ") {
                GivenNameGenerator()
                "and the"
                NounGenerator(isPlural: true).capitalized()
            }

            TextGenerator(separator: " ") {
                GivenNameGenerator().possessiveForm()
                NounGenerator(isPlural: true).capitalized()
            }
        }.makeText(using: &randomNumberGenerator)
    }
}

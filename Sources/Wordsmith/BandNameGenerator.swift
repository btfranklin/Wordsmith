//  Created by B.T. Franklin on 6/12/22

public struct BandNameGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            Text(separator: " ") {
                "The"
                AdjectiveGenerator().capitalized()
            }

            Text(separator: " ") {
                "The"
                NounGenerator().capitalized()
            }

            Text(separator: " ") {
                "The"
                NounGenerator(isPlural: true).capitalized()
            }

            Text(separator: " ") {
                AdjectiveGenerator()
                NounGenerator()
            }.capitalized()

            Text(separator: " ") {
                "The"
                AdjectiveGenerator()
                NounGenerator(isPlural: true)
            }.capitalized()

            Text(separator: " ") {
                GivenNameGenerator()
                "and the"
                NounGenerator(isPlural: true).capitalized()
            }

            Text(separator: " ") {
                GivenNameGenerator().possessiveForm()
                NounGenerator(isPlural: true).capitalized()
            }
        }.makeText(using: &randomNumberGenerator)
    }
}

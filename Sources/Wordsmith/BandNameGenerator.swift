//  Created by B.T. Franklin on 6/12/22

public struct BandNameGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            Text(separator: " ") {
                "The"
                Adjective().capitalized()
            }

            Text(separator: " ") {
                "The"
                Noun().capitalized()
            }

            Text(separator: " ") {
                "The"
                Noun(isPlural: true).capitalized()
            }

            Text(separator: " ") {
                Adjective()
                Noun()
            }.capitalized()

            Text(separator: " ") {
                "The"
                Adjective()
                Noun(isPlural: true)
            }.capitalized()

            Text(separator: " ") {
                GivenName()
                "and the"
                Noun(isPlural: true).capitalized()
            }

            Text(separator: " ") {
                GivenName().possessiveForm()
                Noun(isPlural: true).capitalized()
            }
        }.makeText(using: &randomNumberGenerator)
    }
}

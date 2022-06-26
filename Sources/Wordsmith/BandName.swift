//  Created by B.T. Franklin on 6/12/22

public struct BandName: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        OneOf {

            Text(separator: " ") {
                "The"
                Adjective()
            }

            Text(separator: " ") {
                "The"
                Noun()
            }

            Text(separator: " ") {
                "The"
                Noun(isPlural: true)
            }

            Text(separator: " ") {
                Adjective()
                Noun()
            }

            Text(separator: " ") {
                "The"
                Adjective()
                Noun(isPlural: true)
            }

            Text(separator: " ") {
                GivenName()
                "and the"
                Noun(isPlural: true)
            }

            Text(separator: " ") {
                GivenName().possessiveForm()
                Noun(isPlural: true)
            }
        }.titleCased().makeText(using: &randomNumberGenerator)
    }
}

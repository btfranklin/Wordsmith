//  Created by B.T. Franklin on 6/12/22

public struct PersonNameGenerator: TextComponent {

    public let gender: BinaryGender?

    public init(gender: BinaryGender? = nil) {
        self.gender = gender
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Text(separator: " ") {
            GivenNameGenerator(gender: gender)
            SurnameGenerator()
        }.makeText(using: &randomNumberGenerator)
    }
}

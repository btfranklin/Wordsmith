//  Created by B.T. Franklin on 6/12/22

public struct PersonName: TextComponent {

    public let gender: BinaryGender?

    public init(gender: BinaryGender? = nil) {
        self.gender = gender
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Text(separator: " ") {
            GivenName(gender: gender)
            Surname()
        }.makeText(using: &randomNumberGenerator)
    }
}

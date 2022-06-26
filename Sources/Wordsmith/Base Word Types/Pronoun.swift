//  Created by B.T. Franklin on 6/11/22

public struct Pronoun: TextComponent {

    private let isSingular: Bool
    private let isThirdPerson: Bool

    public init(isSingular: Bool, isThirdPerson: Bool) {
        self.isSingular = isSingular
        self.isThirdPerson = isThirdPerson
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {

        let text: String

        if isThirdPerson {
            if isSingular {
                text = ["he","she","it"].randomElement(using: &randomNumberGenerator)!
            } else {
                text = "they"
            }

        } else {
            if isSingular {
                text = ["I","you"].randomElement(using: &randomNumberGenerator)!
            } else {
                text = ["we","you"].randomElement(using: &randomNumberGenerator)!
            }
        }

        return text
    }
}

//  Created by B.T. Franklin on 6/11/22

public struct DeterminerGenerator: TextGeneratorComponent {

    private static let options: [String] = [
        "a",
        "the",
        "my",
        "your",
        "our",
        "her",
        "his",
    ]
    
    private let isBeforeVowel: Bool

    public init(isBeforeVowel: Bool = false) {
        self.isBeforeVowel = isBeforeVowel
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var value = DeterminerGenerator.options.randomElement(using: &randomNumberGenerator)!

        if value == "a" && isBeforeVowel {
            value = "an"
        }

        return value
    }
}

//  Created by B.T. Franklin on 6/11/22

public struct ArticleGenerator: TextComponent {

    private let isBeforeVowel: Bool

    public init(isBeforeVowel: Bool = false) {
        self.isBeforeVowel = isBeforeVowel
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var value = Bool.random(using: &randomNumberGenerator) ? "a" : "the"

        if value == "a" && isBeforeVowel {
            value = "an"
        }

        return value
    }
}

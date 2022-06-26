//  Created by B.T. Franklin on 6/18/22

public struct PrefixedByDeterminerTextGenerator: TextGeneratorComponent {

    private let wrappedTextGenerator: TextGeneratorComponent

    init(wrappedTextGenerator: TextGeneratorComponent) {
        self.wrappedTextGenerator = wrappedTextGenerator
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let text = wrappedTextGenerator.makeText(using: &randomNumberGenerator)
        let determiner = DeterminerGenerator(isBeforeVowel: text.startsWithVowel).makeText(using: &randomNumberGenerator)
        return "\(determiner) \(text)"
    }
}

extension TextGeneratorComponent {
    public func prefixedByDeterminer() -> TextGeneratorComponent {
        PrefixedByDeterminerTextGenerator(wrappedTextGenerator: self)
    }
}

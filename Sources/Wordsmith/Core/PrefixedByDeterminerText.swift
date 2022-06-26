//  Created by B.T. Franklin on 6/18/22

public struct PrefixedByDeterminerText: TextComponent {

    private let wrappedTextComponent: TextComponent

    init(wrappedTextComponent: TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let text = wrappedTextComponent.makeText(using: &randomNumberGenerator)
        let determiner = Determiner(isBeforeVowel: text.startsWithVowel).makeText(using: &randomNumberGenerator)
        return "\(determiner) \(text)"
    }
}

extension TextComponent {
    public func prefixedByDeterminer() -> TextComponent {
        PrefixedByDeterminerText(wrappedTextComponent: self)
    }
}

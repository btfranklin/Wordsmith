//  Created by B.T. Franklin on 6/18/22

import StringBooster

public struct PrefixedByArticleText: TextComponent {

    private let wrappedTextComponent: TextComponent

    init(wrappedTextComponent: TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let text = wrappedTextComponent.makeText(using: &randomNumberGenerator)
        let article = Article(isBeforeVowel: text.startsWithVowel).makeText(using: &randomNumberGenerator)
        return "\(article) \(text)"
    }
}

extension TextComponent {
    public func prefixedByArticle() -> TextComponent {
        PrefixedByArticleText(wrappedTextComponent: self)
    }
}

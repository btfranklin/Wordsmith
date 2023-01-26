//  Created by B.T. Franklin on 6/18/22

import StringBooster

fileprivate struct PrefixedByArticleText: TextComponent {

    private let wrappedTextComponent: TextComponent

    fileprivate init(wrappedTextComponent: some TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let text = wrappedTextComponent.makeText(using: &randomNumberGenerator)
        let article = Article(isBeforeVowel: text.startsWithVowel).makeText(using: &randomNumberGenerator)
        return "\(article) \(text)"
    }
}

extension TextComponent {
    public func prefixedByArticle() -> some TextComponent {
        PrefixedByArticleText(wrappedTextComponent: self)
    }
}

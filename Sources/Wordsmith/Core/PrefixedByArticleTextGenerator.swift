//  Created by B.T. Franklin on 6/18/22

import StringBooster

public struct PrefixedByArticleTextGenerator: TextGeneratorComponent {

    private let wrappedTextGenerator: TextGeneratorComponent

    init(wrappedTextGenerator: TextGeneratorComponent) {
        self.wrappedTextGenerator = wrappedTextGenerator
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let text = wrappedTextGenerator.makeText(using: &randomNumberGenerator)
        let article = ArticleGenerator(isBeforeVowel: text.startsWithVowel).makeText(using: &randomNumberGenerator)
        return "\(article) \(text)"
    }
}

extension TextGeneratorComponent {
    public func prefixedByArticle() -> TextGeneratorComponent {
        PrefixedByArticleTextGenerator(wrappedTextGenerator: self)
    }
}

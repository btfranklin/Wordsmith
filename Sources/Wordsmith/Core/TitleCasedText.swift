//  Created by B.T. Franklin on 6/20/22

public struct TitleCasedText: TextComponent {

    private let wrappedTextComponent: TextComponent

    init(wrappedTextComponent: TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextComponent.makeText(using: &randomNumberGenerator).titleCased
    }
}

extension TextComponent {
    public func titleCased() -> TextComponent {
        TitleCasedText(wrappedTextComponent: self)
    }
}

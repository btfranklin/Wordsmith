//  Created by B.T. Franklin on 6/20/22

fileprivate struct TitleCasedText: TextComponent {

    private let wrappedTextComponent: TextComponent

    fileprivate init(wrappedTextComponent: some TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextComponent.makeText(using: &randomNumberGenerator).titleCased
    }
}

extension TextComponent {
    public func titleCased() -> some TextComponent {
        TitleCasedText(wrappedTextComponent: self)
    }
}

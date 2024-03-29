//  Created by B.T. Franklin on 6/11/22

fileprivate struct FirstUppercasedText: TextComponent {

    private let wrappedTextComponent: TextComponent

    fileprivate init(wrappedTextComponent: some TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextComponent.makeText(using: &randomNumberGenerator).firstUppercased
    }
}

extension TextComponent {
    public func firstUppercased() -> some TextComponent {
        FirstUppercasedText(wrappedTextComponent: self)
    }
}

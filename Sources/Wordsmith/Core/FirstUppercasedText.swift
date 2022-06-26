//  Created by B.T. Franklin on 6/11/22

public struct FirstUppercasedText: TextComponent {

    private let wrappedTextComponent: TextComponent

    init(wrappedTextComponent: TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextComponent.makeText(using: &randomNumberGenerator).firstUppercased
    }
}

extension TextComponent {
    public func firstUppercased() -> TextComponent {
        FirstUppercasedText(wrappedTextComponent: self)
    }
}

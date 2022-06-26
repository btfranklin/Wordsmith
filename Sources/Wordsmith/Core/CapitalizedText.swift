//  Created by B.T. Franklin on 6/11/22

public struct CapitalizedText: TextComponent {

    private let wrappedTextComponent: TextComponent

    init(wrappedTextComponent: TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextComponent.makeText(using: &randomNumberGenerator).capitalized
    }
}

extension TextComponent {
    public func capitalized() -> TextComponent {
        CapitalizedText(wrappedTextComponent: self)
    }
}

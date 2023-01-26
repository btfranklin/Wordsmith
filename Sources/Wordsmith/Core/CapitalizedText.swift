//  Created by B.T. Franklin on 6/11/22

fileprivate struct CapitalizedText: TextComponent {

    private let wrappedTextComponent: TextComponent

    fileprivate init(wrappedTextComponent: some TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextComponent.makeText(using: &randomNumberGenerator).capitalized
    }
}

extension TextComponent {
    public func capitalized() -> some TextComponent {
        CapitalizedText(wrappedTextComponent: self)
    }
}

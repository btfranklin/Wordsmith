//  Created by B.T. Franklin on 6/12/22

public struct PossessiveFormText: TextComponent {

    private let wrappedTextComponent: TextComponent

    init(wrappedTextComponent: TextComponent) {
        self.wrappedTextComponent = wrappedTextComponent
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let wrappedText = wrappedTextComponent.makeText(using: &randomNumberGenerator)
        return wrappedText.last == "s" ? "\(wrappedText)'" : "\(wrappedText)'s"
    }
}

extension TextComponent {
    public func possessiveForm() -> TextComponent {
        PossessiveFormText(wrappedTextComponent: self)
    }
}

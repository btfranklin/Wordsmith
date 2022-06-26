//  Created by B.T. Franklin on 6/12/22

public struct PossessiveFormTextGenerator: TextGeneratorComponent {

    private let wrappedTextGenerator: TextGeneratorComponent

    init(wrappedTextGenerator: TextGeneratorComponent) {
        self.wrappedTextGenerator = wrappedTextGenerator
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let wrappedText = wrappedTextGenerator.makeText(using: &randomNumberGenerator)
        return wrappedText.last == "s" ? "\(wrappedText)'" : "\(wrappedText)'s"
    }
}

extension TextGeneratorComponent {
    public func possessiveForm() -> TextGeneratorComponent {
        PossessiveFormTextGenerator(wrappedTextGenerator: self)
    }
}

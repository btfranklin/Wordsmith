//  Created by B.T. Franklin on 6/11/22

public struct CapitalizedTextGenerator: TextGeneratorComponent {

    private let wrappedTextGenerator: TextGeneratorComponent

    init(wrappedTextGenerator: TextGeneratorComponent) {
        self.wrappedTextGenerator = wrappedTextGenerator
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextGenerator.makeText(using: &randomNumberGenerator).capitalized
    }
}

extension TextGeneratorComponent {
    public func capitalized() -> TextGeneratorComponent {
        CapitalizedTextGenerator(wrappedTextGenerator: self)
    }
}

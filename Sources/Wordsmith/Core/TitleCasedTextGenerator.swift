//  Created by B.T. Franklin on 6/20/22

public struct TitleCasedTextGenerator: TextGeneratorComponent {

    private let wrappedTextGenerator: TextGeneratorComponent

    init(wrappedTextGenerator: TextGeneratorComponent) {
        self.wrappedTextGenerator = wrappedTextGenerator
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextGenerator.makeText(using: &randomNumberGenerator).titleCased
    }
}

extension TextGeneratorComponent {
    public func titleCased() -> TextGeneratorComponent {
        TitleCasedTextGenerator(wrappedTextGenerator: self)
    }
}

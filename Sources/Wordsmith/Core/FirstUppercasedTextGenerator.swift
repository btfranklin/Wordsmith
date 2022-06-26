//  Created by B.T. Franklin on 6/11/22

public struct FirstUppercasedTextGenerator: TextGeneratorComponent {

    private let wrappedTextGenerator: TextGeneratorComponent

    init(wrappedTextGenerator: TextGeneratorComponent) {
        self.wrappedTextGenerator = wrappedTextGenerator
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        wrappedTextGenerator.makeText(using: &randomNumberGenerator).firstUppercased
    }
}

extension TextGeneratorComponent {
    public func firstUppercased() -> TextGeneratorComponent {
        FirstUppercasedTextGenerator(wrappedTextGenerator: self)
    }
}

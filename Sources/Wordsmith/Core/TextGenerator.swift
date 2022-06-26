//  Created by B.T. Franklin on 6/11/22

public struct TextGenerator: TextGeneratorComponent {

    private let components: [TextGeneratorComponent]
    private let separator: String

    public init(separator: String = "", @TextGeneratorBuilder _ componentsClosure: () -> [TextGeneratorComponent]) {
        self.separator = separator
        self.components = componentsClosure()
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var textComponents: [String] = []
        for component in components {
            textComponents.append(component.makeText(using: &randomNumberGenerator))
        }
        return textComponents.joined(separator: separator)
    }

    public func makeText() -> String {
        var randomNumberGenerator = SystemRandomNumberGenerator()
        return makeText(using: &randomNumberGenerator)
    }
}

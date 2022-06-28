//  Created by B.T. Franklin on 6/11/22

public struct Text: TextComponent {

    private let components: [TextComponent]
    private let separator: String

    public init(separator: String = "", @TextBuilder _ componentsClosure: () -> [TextComponent]) {
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
}

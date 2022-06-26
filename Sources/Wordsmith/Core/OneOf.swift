//  Created by B.T. Franklin on 6/18/22

public struct OneOf: TextComponent {

    private let options: [TextComponent]

    public init(@TextBuilder _ optionsClosure: () -> [TextComponent]) {
        let options = optionsClosure()
        guard !options.isEmpty else {
            fatalError("OneOf must be initialized with non-empty options")
        }
        self.options = options
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        options.randomElement(using: &randomNumberGenerator)!.makeText(using: &randomNumberGenerator)
    }
}

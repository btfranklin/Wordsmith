//  Created by B.T. Franklin on 6/18/22

public struct OneOf: TextGeneratorComponent {

    private let options: [TextGeneratorComponent]

    public init(@TextGeneratorBuilder _ optionsClosure: () -> [TextGeneratorComponent]) {
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

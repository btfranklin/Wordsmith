//  Created by B.T. Franklin on 6/29/22

import ControlledChaos

public struct Either: TextComponent {

    private let firstOption: TextComponent
    private let secondOption: TextComponent
    private let firstOptionProbability: Double

    public init(firstOptionProbability: Double = 0.5,
                @TextBuilder _ optionsClosure: () -> [TextComponent]) {

        guard (0.0...1.0).contains(firstOptionProbability) else {
            fatalError("First option probability must be in the range 0.0 - 1.0")
        }
        self.firstOptionProbability = firstOptionProbability

        let options = optionsClosure()
        guard options.count == 2 else {
            fatalError("Either must be initialized with exactly two options")
        }
        self.firstOption = options.first!
        self.secondOption = options.last!
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        (Bool.random(probability: firstOptionProbability, using: &randomNumberGenerator)
         ? firstOption
         : secondOption).makeText(using: &randomNumberGenerator)
    }
}

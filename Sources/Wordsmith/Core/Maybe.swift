//  Created by B.T. Franklin on 6/25/22

import ControlledChaos

public struct Maybe: TextGeneratorComponent {

    private let option: TextGeneratorComponent
    private let probability: Double

    public init(probability: Double = 0.5,
         @TextGeneratorBuilder _ optionsClosure: () -> [TextGeneratorComponent]) {

        self.probability = probability

        option = TextGenerator {
            optionsClosure()
        }
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Bool.random(probability: probability, using: &randomNumberGenerator) ? option.makeText(using: &randomNumberGenerator) : ""
    }
}

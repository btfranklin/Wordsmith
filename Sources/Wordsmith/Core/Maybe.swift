//  Created by B.T. Franklin on 6/25/22

import ControlledChaos

public struct Maybe: TextComponent {

    private let option: TextComponent
    private let probability: Double

    public init(probability: Double = 0.5,
         @TextBuilder _ optionsClosure: () -> [TextComponent]) {

        self.probability = probability

        option = Text {
            optionsClosure()
        }
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Bool.random(probability: probability, using: &randomNumberGenerator) ? option.makeText(using: &randomNumberGenerator) : ""
    }
}

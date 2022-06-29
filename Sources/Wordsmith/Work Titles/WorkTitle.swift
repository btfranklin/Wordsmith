//  Created by B.T. Franklin on 6/18/22

public struct WorkTitle: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Either(firstOptionProbability: 0.85) {
            SimpleWorkTitle()
            UnusualWorkTitle()
        }.makeText(using: &randomNumberGenerator)
    }
}

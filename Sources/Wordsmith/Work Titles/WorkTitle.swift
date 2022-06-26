//  Created by B.T. Franklin on 6/18/22

public struct WorkTitle: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Bool.random(probability: 0.85, using: &randomNumberGenerator)
        ? SimpleWorkTitle().makeText(using: &randomNumberGenerator)
        : UnusualWorkTitle().makeText(using: &randomNumberGenerator)
    }
}

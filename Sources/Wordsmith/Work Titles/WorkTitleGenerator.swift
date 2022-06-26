//  Created by B.T. Franklin on 6/18/22

public struct WorkTitleGenerator: TextGeneratorComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Bool.random(probability: 0.85, using: &randomNumberGenerator)
        ? SimpleWorkTitleGenerator().makeText(using: &randomNumberGenerator)
        : UnusualWorkTitleGenerator().makeText(using: &randomNumberGenerator)
    }
}

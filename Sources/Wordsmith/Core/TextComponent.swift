//  Created by B.T. Franklin on 6/11/22

public protocol TextComponent {
    func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String
    func makeText() -> String
}

extension TextComponent {
    public func makeText() -> String {
        var randomNumberGenerator = SystemRandomNumberGenerator()
        return makeText(using: &randomNumberGenerator)
    }
}

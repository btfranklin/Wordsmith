//  Created by B.T. Franklin on 6/11/22

extension String: TextGeneratorComponent {

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        self
    }

    public func makeText() -> String {
        self
    }
}

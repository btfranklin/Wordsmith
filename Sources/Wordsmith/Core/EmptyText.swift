//  Created by B.T. Franklin on 6/11/22

public struct EmptyText: TextComponent {

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        ""
    }

    public func makeText() -> String {
        ""
    }
}

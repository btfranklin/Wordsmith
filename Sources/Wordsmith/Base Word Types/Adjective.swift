//  Created by B.T. Franklin on 6/11/22

import Foundation

public struct Adjective: TextComponent {

    private static let options: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Adjectives", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let adjectives = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return adjectives
    }()

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Adjective.options.randomElement(using: &randomNumberGenerator)!
    }
}

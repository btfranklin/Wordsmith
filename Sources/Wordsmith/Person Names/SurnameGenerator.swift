//  Created by B.T. Franklin on 6/12/22

import Foundation

public struct SurnameGenerator: TextComponent {

    static let options: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Common Surnames", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let names = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return names
    }()

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        SurnameGenerator.options.randomElement(using: &randomNumberGenerator)!
    }
}

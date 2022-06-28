//  Created by B.T. Franklin on 6/27/22

import Foundation

public struct ChemicalCompoundName: TextComponent {

    private static let options: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Chemical Compound Names", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let compounds = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return compounds
    }()

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        ChemicalCompoundName.options.randomElement(using: &randomNumberGenerator)!
    }
}

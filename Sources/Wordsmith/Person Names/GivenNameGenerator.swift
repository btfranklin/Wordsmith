//  Created by B.T. Franklin on 6/12/22

import Foundation

public struct GivenNameGenerator: TextGeneratorComponent {

    static let maleNameOptions: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Common Male Given Names", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let names = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return names
    }()

    static let femaleNameOptions: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Common Female Given Names", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let names = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return names
    }()

    public let gender: BinaryGender?

    public init(gender: BinaryGender? = nil) {
        self.gender = gender
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let value: String

        let gender = gender ?? (Bool.random(using: &randomNumberGenerator) ? .male : .female)

        switch gender {
        case .male:
            value = GivenNameGenerator.maleNameOptions.randomElement(using: &randomNumberGenerator)!
        case .female:
            value = GivenNameGenerator.femaleNameOptions.randomElement(using: &randomNumberGenerator)!
        }

        return value
    }
}

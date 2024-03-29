//  Created by B.T. Franklin on 6/11/22

import Foundation

public struct Verb: TextComponent {

    public enum Tense: Int {
        case base
        case past
        case pastParticiple
        case present
        case presentPerfect
    }

    private static let options: [[String]] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Verbs", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let verbs = try? decoder.decode([[String]].self, from: data)
        else {
            return [[]]
        }

        return verbs
    }()

    private let tense: Verb.Tense

    public init(tense: Verb.Tense = .base) {
        self.tense = tense
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let verbRow = Verb.options.randomElement(using: &randomNumberGenerator)!
        let tenseIndex = tense.rawValue
        return verbRow[tenseIndex]
    }
}

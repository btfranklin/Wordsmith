import Foundation

public struct Verb {

    public enum Tense: Int {
        case base
        case past
        case pastParticiple
        case present
        case presentPerfect
    }

    static let options: [[String]] = {
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

    private let value: String

    public init(tense: Verb.Tense = Tense.base) {
        let tenseIndex = tense.rawValue
        let verbRow = Verb.options.randomElement()!
        value = verbRow[tenseIndex]
    }

}

extension Verb: CustomStringConvertible {
    public var description: String {
        value
    }
}

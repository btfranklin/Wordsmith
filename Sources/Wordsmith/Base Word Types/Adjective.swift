import Foundation

public struct Adjective {
    
    static let options: [String] = {
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

    private let value: String
    
    public init() {
        value = Adjective.options.randomElement()!
    }
    
}

extension Adjective: CustomStringConvertible {
    public var description: String {
        value
    }
}

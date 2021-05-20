import Foundation

public struct Adverb {

    static let options: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Adverbs", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let adverbs = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return adverbs
    }()
    
    private let value: String
    
    public init() {
        value = Adverb.options.randomElement()!
    }
    
}

extension Adverb: CustomStringConvertible {
    public var description: String {
        value
    }
}


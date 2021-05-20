import Foundation

public struct Noun {

    static let options: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Nouns", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let nouns = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return nouns
    }()

    private let value: String

    public init(plural: Bool = false) {
        var noun = Noun.options.randomElement()!

        if plural {
            if noun.hasSuffix("ay") || noun.hasSuffix("ey") || noun.hasSuffix("iy") || noun.hasSuffix("oy") || noun.hasSuffix("uy") {
                noun = noun + "s"

            } else if noun.last! == "y" {
                noun = noun.dropLast().description
                noun = noun + "ies"

            } else if noun.last! == "x" || noun.hasSuffix("ss") || noun.hasSuffix("sh") || noun.hasSuffix("ch") {
                noun = noun + "es"

            } else if noun.hasSuffix("ife") {
                noun = noun.dropLast(2).description
                noun = noun + "ves"

            } else if noun.hasSuffix("rf") {
                noun = noun.dropLast().description
                noun = noun + "ves"

            } else if noun.hasSuffix("man") {
                if noun == "human" {
                    noun = "humans"
                } else {
                    noun = noun.dropLast(2).description
                    noun = noun + "en"
                }

            } else if noun.last! != "s" {
                noun = noun + "s"
            }
        }

        value = noun
    }

}

extension Noun: CustomStringConvertible {
    public var description: String {
        value
    }
}

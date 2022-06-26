//  Created by B.T. Franklin on 6/11/22

import Foundation

public struct NounGenerator: TextGeneratorComponent {

    private static let options: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Nouns", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let adjectives = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return adjectives
    }()

    private let isPlural: Bool

    public init(isPlural: Bool = false) {
        self.isPlural = isPlural
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var value = NounGenerator.options.randomElement(using: &randomNumberGenerator)!

        if isPlural {
            if value.hasSuffix("ay") || value.hasSuffix("ey") || value.hasSuffix("iy") || value.hasSuffix("oy") || value.hasSuffix("uy") {
                value = value + "s"

            } else if value.last! == "y" {
                value = value.dropLast().description
                value = value + "ies"

            } else if value.last! == "x" || value.hasSuffix("ss") || value.hasSuffix("sh") || value.hasSuffix("ch") {
                value = value + "es"

            } else if value.hasSuffix("ife") {
                value = value.dropLast(2).description
                value = value + "ves"

            } else if value.hasSuffix("rf") {
                value = value.dropLast().description
                value = value + "ves"

            } else if value.hasSuffix("man") {
                if value == "human" {
                    value = "humans"
                } else {
                    value = value.dropLast(2).description
                    value = value + "en"
                }

            } else if value.last! != "s" {
                value = value + "s"
            }
        }

        return value
    }
}

//  Created by B.T. Franklin on 6/19/22

public struct FictionalCompoundName: TextComponent {

    private static let prefixes = [
        "mono", "bi", "di", "tri"
    ]

    private static func convertToCompoundForm(_ name: String,
                                              using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let convertedName: String
        
        if name.hasSuffix("ium") || name.hasSuffix("ine") || name.hasSuffix("ion") {
            let truncatedName = name.dropLast(3)
            let newSuffix = ["ide","ite","ade","ate","ene"].randomElement(using: &randomNumberGenerator)!
            convertedName = "\(truncatedName)\(newSuffix)"

        } else if name.hasSuffix("en") || name.hasSuffix("an") || name.hasSuffix("on") || name.hasSuffix("un") {
            let newSuffix = ["ide","ite","ade","ate"].randomElement(using: &randomNumberGenerator)!
            convertedName = "\(name)\(newSuffix)"

        } else {
            convertedName = name
        }

        return convertedName
    }

    private static func maybeAddPrefix(to name: String,
                                       probability: Double,
                                       using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let result: String

        if Bool.random(probability: probability, using: &randomNumberGenerator) {
            result = "\(FictionalCompoundName.prefixes.randomElement(using: &randomNumberGenerator)!)\(name)"
        } else {
            result = name
        }

        return result
    }

    private let components: [TextComponent]

    public init(@TextBuilder _ componentsClosure: () -> [TextComponent]) {
        let components = componentsClosure()
        guard components.count == 2 else {
            fatalError("Can only create a compound with two components (or none)")
        }

        self.components = components
    }

    public init() {
        self.components = [FictionalElementName(), FictionalElementName()]
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {

        let text: String

        let shuffledComponents = components.shuffled(using: &randomNumberGenerator)

        let component1 = shuffledComponents[0].makeText(using: &randomNumberGenerator).lowercased()
        let component2 = shuffledComponents[1].makeText(using: &randomNumberGenerator).lowercased()

        if component1 == component2 {
            let convertedName = FictionalCompoundName.convertToCompoundForm(component1, using: &randomNumberGenerator)
            text = Bool.random(using: &randomNumberGenerator)
            ? convertedName
            : "\(FictionalCompoundName.prefixes.randomElement(using: &randomNumberGenerator)!)\(convertedName)"

        } else {
            var word1 = component1
            var word2 = FictionalCompoundName.convertToCompoundForm(component2, using: &randomNumberGenerator)

            word1 = FictionalCompoundName.maybeAddPrefix(to: word1, probability: 0.25, using: &randomNumberGenerator)
            word2 = FictionalCompoundName.maybeAddPrefix(to: word2, probability: 0.40, using: &randomNumberGenerator)

            text = "\(word1) \(word2)"
        }

        return text
    }
}

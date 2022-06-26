//  Created by B.T. Franklin on 6/18/22

public struct FictionalMineralNameGenerator: TextGeneratorComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var text: String

        let rootWord = OneOf {
            GivenNameGenerator()
            WeirdNameGenerator(syllableCount: 2, allowHyphen: false, allowApostrophe: false)
        }.makeText(using: &randomNumberGenerator).lowercased()

        let rootWordLastLetter = rootWord.last!
        let suffix = ["ite", "alt", "um"].randomElement(using: &randomNumberGenerator)!

        switch rootWordLastLetter {
        case "a","o","u":
            let joiningLetter = ["b", "m", "n"].randomElement(using: &randomNumberGenerator)!
            text = "\(rootWord)\(joiningLetter)\(suffix)"
        case "e","y","i":
            text = "\(rootWord.dropLast(1))\(suffix)"
        default:
            text = "\(rootWord)\(suffix)"
        }

        return text
    }
    
}

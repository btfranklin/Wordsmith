//  Created by B.T. Franklin on 6/19/22

public struct FictionalElementNameGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var text: String

        let rootWord = OneOf {
            GivenName()
            Surname()
            WeirdNameGenerator(syllableCount: 2, allowHyphen: false, allowApostrophe: false)
            WeirdNameGenerator(syllableCount: 3, allowHyphen: false, allowApostrophe: false)
        }.makeText(using: &randomNumberGenerator).lowercased()

        let rootWordLastLetter = rootWord.last!

        switch rootWordLastLetter {
        case "a","o","u":
            text = Bool.random(using: &randomNumberGenerator) ? "\(rootWord)gen" : "\(rootWord)n"
        case "e":
            text = Bool.random(using: &randomNumberGenerator) ? "\(rootWord.dropLast(1))ium" : "\(rootWord)on"
        case "h","v","x":
            text = Bool.random(using: &randomNumberGenerator) ? "\(rootWord.dropLast(1))ion" : "\(rootWord)\(["ium","ine"].randomElement(using: &randomNumberGenerator)!)"
        case "k","m","n":
            text = "\(rootWord)\(["ium","ine","ion"].randomElement(using: &randomNumberGenerator)!)"
        case "y","i":
            text = Bool.random(using: &randomNumberGenerator) ? "\(rootWord)gen" : "\(rootWord.dropLast(1))ium"
        default:
            text = "\(rootWord)\(["ium","ine","on"].randomElement(using: &randomNumberGenerator)!)"
        }

        return text
    }

}

//  Created by B.T. Franklin on 6/12/22

public struct WeirdNameGenerator: TextComponent {

    static let openEndedSyllables = [
        "a", "ba", "be", "bi", "bo", "bu", "by", "ca", "cha", "che", "chi", "co", "cho", "chu", "chy", "da", "de", "di", "do", "du", "dy",
        "e", "fa", "fe", "fi", "fo", "fu", "fy", "ga", "ge", "gi", "go", "gu", "gy", "ha", "he", "hi", "ho", "hu", "hy",
        "i", "ja", "je", "ji", "jo", "ju", "jy", "ka", "ke", "ki", "ko", "ku", "ky", "la", "le", "li", "lo", "lu", "ly",
        "ma", "me", "mi", "mo", "mu", "my", "na", "ne", "ni", "no", "nu", "ny", "o", "pa", "pe", "pi", "po", "pu", "py",
        "qua", "que", "ra", "re", "ri", "ro", "ru", "ry", "sa", "se", "si", "so", "su", "ta", "te", "ti", "to", "tu", "ty",
        "u", "va", "ve", "vi", "vo", "vu", "vy", "wa", "we", "wi", "wo", "wu", "wy", "xa", "xe", "xi", "xo", "xu",
        "ya", "ye", "yi", "yo", "yu", "za", "ze", "zi", "zo", "zu"
    ]

    static let endingSounds = [
        "bb", "c", "ck", "ch", "d", "dd", "l", "ll", "m", "mm", "n", "nn", "p", "pp", "r", "rr", "s", "ss", "t", "tt", "w", "x"
    ]

    let syllableCount: Int
    let allowHyphen: Bool
    let allowApostrophe: Bool

    public init(syllableCount: Int,
                allowHyphen: Bool = true,
                allowApostrophe: Bool = true) {

        guard syllableCount >= 1 else {
            fatalError("Syllable count must be greater than 0")
        }

        self.syllableCount = syllableCount
        self.allowHyphen = allowHyphen
        self.allowApostrophe = allowApostrophe
    }
    
    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {

        let willUseHyphen = syllableCount > 2 && allowHyphen && Bool.random(using: &randomNumberGenerator)
        let willUseApostrophe = syllableCount > 2 && allowApostrophe && Bool.random(using: &randomNumberGenerator)
        let hyphenSyllable = willUseHyphen ? Int.random(in: 1..<syllableCount, using: &randomNumberGenerator) : 0
        let apostropheSyllable = willUseApostrophe ? Int.random(in: 1..<syllableCount, using: &randomNumberGenerator) : 0

        var text = ""
        for currentSyllable in 1...syllableCount {
            text += WeirdNameGenerator.openEndedSyllables.randomElement(using: &randomNumberGenerator)!

            if currentSyllable == apostropheSyllable {
                text += "'"
            } else if currentSyllable == hyphenSyllable {
                text += "-"
            }
        }

        if Bool.random(using: &randomNumberGenerator) {
            text += WeirdNameGenerator.endingSounds.randomElement(using: &randomNumberGenerator)!
        }

        return text.firstUppercased
    }
}

//  Created by B.T. Franklin on 3/22/18

import Foundation

public struct WeirdName: Hashable {

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
    
    private let value: String
    
    public init(syllableCount: Int,
                allowHyphen: Bool = true,
                allowApostrophe: Bool = true) {
        
        guard syllableCount >= 1 else {
            fatalError("Syllable count must be greater than 0")
        }

        let willUseHyphen = syllableCount > 2 && allowHyphen && Bool.random()
        let willUseApostrophe = syllableCount > 2 && allowApostrophe && Bool.random()
        let hyphenSyllable = willUseHyphen ? Int.random(in: 1..<syllableCount) : 0
        let apostropheSyllable = willUseApostrophe ? Int.random(in: 1..<syllableCount) : 0
        var str = ""
        for currentSyllable in 1...syllableCount {
            str += WeirdName.openEndedSyllables.randomElement()!

            if currentSyllable == apostropheSyllable {
                str += "'"
            } else if currentSyllable == hyphenSyllable {
                str += "-"
            }
        }
        
        if Bool.random() {
            str += WeirdName.endingSounds.randomElement()!
        }

        value = str.firstUppercased
    }
    
}

extension WeirdName: CustomStringConvertible {
    public var description: String {
        value
    }
}

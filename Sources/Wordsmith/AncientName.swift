//  Created by B.T. Franklin on 9/24/23

public struct AncientName: TextComponent {

    private enum SyllablePattern: CaseIterable {
        case consonantVowel
        case vowelConsonant
        case vowelOnly
    }

    static let singleLetterConsonants = ["t", "m", "k", "h", "l", "p", "w"]
    static let doubleLetterConsonants = ["ph", "ch", "th"]
    static let singleLetterVowels = ["a", "i", "o", "u", "e"]
    static let doubleLetterVowels = ["ai", "au", "ah"]

    static private func randomConsonant(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Bool.random(probability: 0.90, using: &randomNumberGenerator)
        ? AncientName.singleLetterConsonants.randomElement(using: &randomNumberGenerator)!
        : AncientName.doubleLetterConsonants.randomElement(using: &randomNumberGenerator)!
    }

    static private func randomVowel(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Bool.random(probability: 0.95, using: &randomNumberGenerator)
        ? AncientName.singleLetterVowels.randomElement(using: &randomNumberGenerator)!
        : AncientName.doubleLetterVowels.randomElement(using: &randomNumberGenerator)!
    }

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

        let willUseHyphen = syllableCount > 3 && allowHyphen && Bool.random(probability: 0.25, using: &randomNumberGenerator)
        var willTryToUseApostrophe = allowApostrophe && Bool.random(using: &randomNumberGenerator)

        let hyphenSyllable = willUseHyphen ? Int.random(in: 3..<syllableCount, using: &randomNumberGenerator) : 0

        var text = ""
        var previousPattern: SyllablePattern? = nil

        for currentSyllable in 1...syllableCount {
            let pattern: SyllablePattern
            switch Int.random(in: 1...100, using: &randomNumberGenerator) {
            case 1...65:
                pattern = .consonantVowel
            case 66...85:
                pattern = .vowelConsonant
            default:
                pattern = .vowelOnly
            }
            let consonant = AncientName.randomConsonant(using: &randomNumberGenerator)
            let vowel = AncientName.randomVowel(using: &randomNumberGenerator)

            // Vowels "touching" give us a good spot for an apostrophe
            if willTryToUseApostrophe
                && [.consonantVowel, .vowelOnly].contains(previousPattern)
                && [.vowelConsonant, .vowelOnly].contains(pattern) {
                text += "'"
                willTryToUseApostrophe = false
            }

            switch pattern {
            case .consonantVowel:
                text += consonant + vowel
            case .vowelConsonant:
                text += vowel + consonant
            case .vowelOnly:
                text += vowel
            }
            previousPattern = pattern

            if currentSyllable == hyphenSyllable {
                text += "-"
            }
        }

        // Chance to add a trailing consonant
        if previousPattern != .vowelConsonant && Bool.random(probability: 0.4, using: &randomNumberGenerator) {
            text += AncientName.randomConsonant(using: &randomNumberGenerator)
        }

        return text.firstUppercased
    }

}

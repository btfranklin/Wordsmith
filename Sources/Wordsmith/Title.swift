import Foundation

public struct Title: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            let opener = ["When", "Where", "Why", "As"].randomElement()!
            let noun = Noun().description.firstUppercased
            let vowelNoun = noun.startsWithVowel
            let verb = Verb(tense:"present").description.firstUppercased
            return "\(opener) \(Determiner(forVowel: vowelNoun)) \(noun) \(verb)"
        },
        {
            return "\(TimeOfDay()) \(Verb(tense:"present"))".capitalized
        },
        {
            return "\(Adjective()) \(Noun())".capitalized
        },
        {
            return "\(Adjective()) \(Verb(tense:"present perfect"))".capitalized
        },
        {
            let noun = Noun()
            let vowelNoun = noun.description.startsWithVowel
            return "\(Determiner(forVowel: vowelNoun)) \(noun)".capitalized
        },
        {
            let adjective = Adjective()
            let vowelAdjective = adjective.description.startsWithVowel
            return "\(Determiner(forVowel: vowelAdjective)) \(adjective) \(Noun())".capitalized
        },
        {
            return "\(TimeOfDay()) \(Noun())".capitalized
        },
        {
            let noun = Noun()
            let vowelNoun = noun.description.startsWithVowel
            
            var result: String
            switch Int.random(in: 0...3) {
            case 1:
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) \(Verb(tense: "present"))"

            case 2:
                let connector = ["Will", "Shall", "Can"].randomElement()!
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) \(connector) \(Verb())"

            case 3:
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) Is \(Verb(tense: "present perfect"))"

            default:
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) Has \(Verb(tense:"past participle"))"
            }
            
            return result.capitalized
        },
        {
            let adjective1 = Adjective().description.firstUppercased
            let adjective2 = Adjective().description.firstUppercased
            if Bool.random() {
                return "\(adjective1) and \(adjective2)"
            } else {
                let adjective3 = Adjective().description.firstUppercased
                return "\(adjective1), \(adjective2), and \(adjective3)"
            }
        },
        {
            if Bool.random(probability: 20) {
                return "\(Noun()). \(Noun()).".capitalized
            } else {
                let noun1 = Noun().description.firstUppercased
                let noun2 = Noun().description.firstUppercased
                if Bool.random() {
                    let vowelNoun1 = noun1.startsWithVowel
                    let vowelNoun2 = noun2.startsWithVowel
                    let determiner1 = Determiner(forVowel: vowelNoun1).description.firstUppercased
                    let determiner2obj = Determiner(forVowel: vowelNoun2)
                    var determiner2 = determiner2obj.description
                    
                    if !determiner2obj.isArticle {
                        determiner2 = determiner2.firstUppercased
                    }

                    return "\(determiner1) \(noun1) and \(determiner2) \(noun2)"
                } else {
                    return "\(noun1) and \(noun2)"
                }
            }
        },
        {
            return "\(Noun()) \(Adverb()) \(Verb(tense:"present"))".capitalized
        },
        {
            return "\(Verb(tense:"present perfect")) \(Noun())".capitalized
        }

    ]
    
    private let value: String
    
    public init() {
        value = Title.formatters.randomElement()!()
    }
    
}

extension Title: CustomStringConvertible {
    public var description: String {
        return value
    }
}

//  Created by B.T. Franklin on 9/1/19

import Foundation

public struct UnusualWorkTitle: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            "\(Noun()) \(Adverb()) \(Verb(tense:.present))".capitalized
        },
        {
            "\(Noun())-\(Verb(tense:.presentPerfect))".capitalized
        },
        {
            let opener = ["When", "Where", "Why", "As"].randomElement()!
            let noun = Noun().description.firstUppercased
            let vowelNoun = noun.startsWithVowel
            let verb = Verb(tense:.present).description.firstUppercased
            return "\(opener) \(Determiner(forVowel: vowelNoun)) \(noun) \(verb)"
        },
        {
            let opener = ["When", "Where", "Why", "While", "As", "Until", "Unless", "Because", "And", "But"].randomElement()!
            let pronoun = Pronoun()
            let verb: String
            
            let presentTense = Bool.random()
            if presentTense {
                if !pronoun.isSingular {
                    verb = Verb(tense:.base).description.firstUppercased
                } else if pronoun.isThirdPerson {
                    verb = Verb(tense:.present).description.firstUppercased
                } else {
                    verb = Verb(tense:.base).description.firstUppercased
                }
            } else {
                verb = Verb(tense:.past).description.firstUppercased
            }
            
            let elipsisPrefix = Bool.random(probability: 20) ? "..." : ""
            return "\(elipsisPrefix)\(opener) \(pronoun.description.firstUppercased) \(verb)"
        },
        {
            let noun = Noun()
            let vowelNoun = noun.description.startsWithVowel
            
            var result: String
            switch Int.random(in: 0...3) {
            case 1:
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) \(Verb(tense:.present))"

            case 2:
                let connector = ["Will", "Shall", "Can", "Must", "May"].randomElement()!
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) \(connector) \(Verb())"

            case 3:
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) Is \(Verb(tense:.presentPerfect))"

            default:
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) Has \(Verb(tense:.presentPerfect))"
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
            let wordCount = Int.random(in: 2...4)
            var words: [String] = []
            
            switch Int.random(in: 0...2) {
            case 0:
                for _ in 1...wordCount {
                    words.append(Noun().description.firstUppercased)
                }
            case 1:
                for _ in 1...wordCount {
                    words.append(Adverb().description.firstUppercased)
                }
            default:
                for _ in 1...wordCount {
                    words.append(Verb().description.firstUppercased)
                }
            }
            
            let separator: String
            var ender: String?
            switch Int.random(in: 0...5) {
            case 0:
                separator = " - "
            case 1:
                separator = ", "
            case 2:
                separator = "/"
            case 3:
                separator = "! "
                ender = "!"
            case 4:
                separator = "; "
            default:
                separator = "..."
            }
            
            let joinedWords = words.joined(separator: separator)

            return "\(joinedWords)\(ender ?? "")"
        },
        {
            let personName = CommonPersonGivenName().description
            let possessivePersonName: String
            if personName.last == "s" {
                possessivePersonName = "\(personName)'"
            } else {
                possessivePersonName = "\(personName)'s"
            }
            
            return "\(possessivePersonName) \(Adjective()) \(Noun())".capitalized
        },
        {
            let emotion1 = UCBerkeleyEmotion().description.firstUppercased
            var emotion2: String
            repeat {
                emotion2 = UCBerkeleyEmotion().description.firstUppercased
            } while emotion1 == emotion2
            return "\(emotion1) and \(emotion2)"
        },
        {
            let emotionPhrase: String
            if Bool.random() {
                let emotion1 = UCBerkeleyEmotion().description.firstUppercased
                var emotion2: String
                repeat {
                    emotion2 = UCBerkeleyEmotion().description.firstUppercased
                } while emotion1 == emotion2
                emotionPhrase = "\(emotion1) and \(emotion2)"
            } else {
                emotionPhrase = UCBerkeleyEmotion().description.firstUppercased
            }
            
            return "\(emotionPhrase) in \(TownName())"
        },
    ]
    
    private let value: String
    
    public init() {
        value = UnusualWorkTitle.formatters.randomElement()!()
    }
    
}

extension UnusualWorkTitle: CustomStringConvertible {
    public var description: String {
        value
    }
}

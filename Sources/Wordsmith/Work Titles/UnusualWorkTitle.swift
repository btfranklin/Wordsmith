//  Created by B.T. Franklin on 9/1/19

import Foundation

public struct UnusualWorkTitle: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            "\(UCBerkeleyEmotion()) \(Adverb()) \(Verb(tense:.present))".capitalized
        },
        {
            let verb = Verb(tense:.presentPerfect).description.firstUppercased
            let noun = Noun().description.firstUppercased
            let vowelNoun = noun.startsWithVowel
            let determiner = Determiner(forVowel: vowelNoun)
            return "\(verb) \(determiner.isArticle ? determiner.description : determiner.description.firstUppercased) \(noun)"
        },
        {
            let opener = ["When", "Where", "Why", "While", "As", "Until", "Because"].randomElement()!
            let noun = Noun().description.firstUppercased
            let vowelNoun = noun.startsWithVowel
            let verb = Verb(tense:.present).description.firstUppercased
            return "\(opener) \(Article(forVowel: vowelNoun)) \(noun) \(verb)"
        },
        {
            let opener = ["When", "Where", "Why", "While", "As", "Until", "Because"].randomElement()!
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
            
            return "\(opener) \(pronoun.description.firstUppercased) \(verb)"
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
                result = "\(Determiner(forVowel: vowelNoun)) \(noun) Has \(Verb(tense:.pastParticiple))"
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
        {
            let redux = ["Revisited", "Revised", "Reimagined", "Renewed", "Rethought", "Redux"].randomElement()!
            return "'\(SimpleWorkTitle())' \(redux)"
        }
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

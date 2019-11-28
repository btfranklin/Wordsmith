//  Created by B.T. Franklin on 9/1/19

import Foundation
import DunesailerUtilities

public struct SimpleWorkTitle: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            Noun().description.firstUppercased
        },
        {
            Noun().description.firstUppercased
        },
        {
            Noun().description.firstUppercased
        },
        {
            let noun = Noun()
            let vowelNoun = noun.description.startsWithVowel
            return "\(Determiner(forVowel: vowelNoun)) \(noun)".capitalized
        },
        {
            Adjective().description.firstUppercased
        },
        {
            Adjective().description.firstUppercased
        },
        {
            Adjective().description.firstUppercased
        },
        {
            Adverb().description.firstUppercased
        },
        {
            Verb(tense:.presentPerfect).description.firstUppercased
        },
        {
            "\(Verb(tense:.presentPerfect)) \(Noun())".capitalized
        },
        {
            "\(Noun())-\(Verb(tense:.presentPerfect))".capitalized
        },
        {
            "\(TimeOfDay()) \(Verb(tense:.present))".capitalized
        },
        {
            "\(TimeOfDay()) \(Noun())".capitalized
        },
        {
            "\(Adjective()) \(Noun())".capitalized
        },
        {
            "\(Adjective()) \(Noun())".capitalized
        },
        {
            "The \(Adjective()) \(Noun())".capitalized
        },
        {
            let thing = Bool.random() ?
                Noun().description.firstUppercased :
                "\(Adjective()) \(Noun())".capitalized
            
            var prepositionalPhrase: String? = nil
            if Bool.random() {
                let preposition = Bool.random() ? "in" : "of"
                prepositionalPhrase = " \(preposition) \(TownName())"
            }
            return "The \(thing)\(prepositionalPhrase ?? "")"
        },
        {
            "\(Adjective()) \(Verb(tense:.presentPerfect))".capitalized
        },
        {
            let adjective = Adjective()
            let vowelAdjective = adjective.description.startsWithVowel
            return "\(Determiner(forVowel: vowelAdjective)) \(adjective) \(Noun())".capitalized
        },
        {
            CommonPersonName().description
        },
        {
            TownName().description
        },
    ]
    
    private let value: String
    
    public init() {
        value = SimpleWorkTitle.formatters.randomElement()!()
    }
    
}

extension SimpleWorkTitle: CustomStringConvertible {
    public var description: String {
        value
    }
}

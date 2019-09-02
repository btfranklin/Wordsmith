//  Created by B.T. Franklin on 9/1/19

import Foundation
import DunesailerUtilities

public struct SimpleWorkTitle: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            return Noun().description.firstUppercased
        },
        {
            return Noun().description.firstUppercased
        },
        {
            return Noun().description.firstUppercased
        },
        {
            let noun = Noun()
            let vowelNoun = noun.description.startsWithVowel
            return "\(Determiner(forVowel: vowelNoun)) \(noun)".capitalized
        },
        {
            return Adjective().description.firstUppercased
        },
        {
            return Adjective().description.firstUppercased
        },
        {
            return Adjective().description.firstUppercased
        },
        {
            return Adverb().description.firstUppercased
        },
        {
            return Verb(tense:"present perfect").description.firstUppercased
        },
        {
            return "\(Verb(tense:"present perfect")) \(Noun())".capitalized
        },
        {
            return "\(Noun())-\(Verb(tense:"present perfect"))".capitalized
        },
        {
            return "\(TimeOfDay()) \(Verb(tense:"present"))".capitalized
        },
        {
            return "\(TimeOfDay()) \(Noun())".capitalized
        },
        {
            return "\(Adjective()) \(Noun())".capitalized
        },
        {
            return "\(Adjective()) \(Verb(tense:"present perfect"))".capitalized
        },
        {
            let adjective = Adjective()
            let vowelAdjective = adjective.description.startsWithVowel
            return "\(Determiner(forVowel: vowelAdjective)) \(adjective) \(Noun())".capitalized
        },
    ]
    
    private let value: String
    
    public init() {
        value = SimpleWorkTitle.formatters.randomElement()!()
    }
    
}

extension SimpleWorkTitle: CustomStringConvertible {
    public var description: String {
        return value
    }
}

//  Created by B.T. Franklin on 9/1/19

import Foundation
import DunesailerUtilities

public struct SimpleWorkTitle: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            Noun(plural: Bool.random()).description.firstUppercased
        },
        {
            let noun = Noun()
            let vowelNoun = noun.description.startsWithVowel
            return "\(Article(forVowel: vowelNoun)) \(noun)".capitalized
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
            Adverb().description.firstUppercased
        },
        {
            Verb(tense:.presentPerfect).description.firstUppercased
        },
        {
            "\(TimeOfDay()) \(Verb(tense:.present))".capitalized
        },
        {
            "\(TimeOfDay()) \(Noun(plural: Bool.random()))".capitalized
        },
        {
            "\(Adjective()) \(Noun(plural: Bool.random()))".capitalized
        },
        {
            let adjective = Adjective()
            let vowelAdjective = adjective.description.startsWithVowel
            return "\(Article(forVowel: vowelAdjective)) \(adjective) \(Noun())".capitalized
        },
        {
            let thing = Bool.random() ?
                Noun(plural: Bool.random()).description.firstUppercased :
                "\(Adjective()) \(Noun(plural: Bool.random()))".capitalized
            
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
        {
            UCBerkeleyEmotion().description.firstUppercased
        },
        {
            let emotion = UCBerkeleyEmotion()
            let vowelEmotion = emotion.description.startsWithVowel
            return "\(Determiner(forVowel: vowelEmotion)) \(emotion)".capitalized
        },
        {
            "\(UCBerkeleyEmotion().description.firstUppercased) in \(TownName())"
        },
        {
            let criminalGangName = CriminalGangName()
            return "\(criminalGangName.beginsWithPersonName ? "" : "The ")\(criminalGangName)"
        },
        {
            let adjectiveString = Bool.random() ? "\(Adjective().description.firstUppercased) " : ""
            let adventureWord = ["Adventures", "Journey", "Journeys", "Travels", "Tale", "Escapades"].randomElement()!
            return "The \(adjectiveString)\(adventureWord) of \(CommonPersonName())"
        },
        {
            let adjectiveString = Bool.random() ? "\(Adjective().description.firstUppercased) " : ""
            let adventureWord = ["Adventures", "Journey", "Journeys", "Travels", "Tale", "Voyage"].randomElement()!
            return "The \(adjectiveString)\(adventureWord) of the '\(OceanShipName())'"
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

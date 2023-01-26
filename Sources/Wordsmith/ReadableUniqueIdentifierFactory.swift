//  Created by B.T. Franklin on 6/26/22

import Foundation

public enum ReadableUniqueIdentifierFactory {
    
    public static func makeIdentifier(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        Text(separator: "_") {
            Either {
                Text(separator: "_") {
                    Adjective()
                    Noun()
                }
                Text(separator: "_") {
                    Adverb()
                    Verb(tense: .presentPerfect)
                }
            }
            String(format:"%02X", Date.timeIntervalSinceReferenceDate)
        }.makeText(using: &randomNumberGenerator)
    }
    
    public static func makeIdentifier() -> String {
        var randomNumberGenerator = SystemRandomNumberGenerator()
        return makeIdentifier(using: &randomNumberGenerator)
    }
}

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
        }.makeText(using: &randomNumberGenerator)
            .appending("_")
            .appending(String(UInt64(Date.timeIntervalSinceReferenceDate*1000000), radix: 36, uppercase: true))
    }
    
    public static func makeIdentifier() -> String {
        var randomNumberGenerator = SystemRandomNumberGenerator()
        return makeIdentifier(using: &randomNumberGenerator)
    }
}

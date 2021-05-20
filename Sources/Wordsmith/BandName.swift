//  Created by B.T. Franklin on 11/28/19.

import Foundation

public struct BandName: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            "The \(Adjective())".capitalized
        },
        {
            "The \(Noun())".capitalized
        },
        {
            "\(Adjective()) \(Noun())".capitalized
        },
        {
            "The \(Adjective()) \(Noun(plural: true))".capitalized
        },
        {
            return "The \(Noun(plural: true))".capitalized
        },
        {
            "\(GivenName()) and the \(Noun(plural: true).description.capitalized)"
        },
        {
            "\(GivenName().possessiveForm) \(Noun(plural: true).description.capitalized)"
        },
    ]
    
    private let value: String
    
    public init() {
        value = BandName.formatters.randomElement()!()
    }
}

extension BandName: CustomStringConvertible {
    public var description: String {
        value
    }
}


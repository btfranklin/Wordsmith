//  Created by B.T. Franklin on 12/8/20.

import Foundation

public struct CriminalGangName: Hashable {

    private static let formatters: [() -> String] = [
        {
            "\(CommonPersonGivenName())'s \(VillainousPersonNoun(plural: true).description.capitalized)"
        },
        {
            "\(CommonPersonGivenName())'s \(PrimitiveWeapon(plural: true).description.capitalized)"
        },
        {
            "\(MartialSocialConcept().description.capitalized) \(VillainousPersonNoun(plural: true).description.capitalized)"
        },
        {
            "\(PrimitiveWeapon().description.capitalized) \(VillainousPersonNoun(plural: true).description.capitalized)"
        },
        {
            "\(VillainousPersonNoun(plural: true).description.capitalized) of \(TownName())"
        },
        {
            "\(TownName()) \(VillainousPersonNoun(plural: true).description.capitalized)"
        },
        {
            "\(Adjective().description.capitalized) \(VillainousPersonNoun(plural: true).description.capitalized)"
        },
        {
            "\(Adjective().description.capitalized) \(VillainousPersonNoun(plural: true).description.capitalized) of \(TownName())"
        },
    ]

    private let value: String

    public init() {
        value = CriminalGangName.formatters.randomElement()!()
    }
}

extension CriminalGangName: CustomStringConvertible {
    public var description: String {
        value
    }
}

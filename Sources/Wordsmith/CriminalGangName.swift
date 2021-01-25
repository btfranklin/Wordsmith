//  Created by B.T. Franklin on 12/8/20.

import Foundation

public struct CriminalGangName: Hashable {

    private static let personsGroupFormatters: [() -> String] = [
        {
            "\(CommonPersonGivenName())'s \(VillainousPersonNoun(plural: true).description.capitalized)"
        },
        {
            "\(CommonPersonGivenName())'s \(PrimitiveWeapon(plural: true).description.capitalized)"
        },
    ]

    private static let normalFormatters: [() -> String] = [
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

    public let beginsWithPersonName: Bool

    private let value: String

    public init() {
        if Bool.random(probability: 25) {
            beginsWithPersonName = true
            value = CriminalGangName.personsGroupFormatters.randomElement()!()
        } else {
            beginsWithPersonName = false
            value = CriminalGangName.normalFormatters.randomElement()!()
        }
    }
}

extension CriminalGangName: CustomStringConvertible {
    public var description: String {
        value
    }
}

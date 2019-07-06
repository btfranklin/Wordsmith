//  Created by B.T. Franklin on 7/8/18

import Foundation
import DunesailerUtilities

public struct OceanShipName: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            return CommonPersonGivenName(gender: .female).description
        },
        {
            return CommonPersonGivenName(gender: .female).description
        },
        {
            return CommonPersonGivenName(gender: .female).description
        },
        {
            return CommonPersonGivenName(gender: .female).description
        },
        {
            return MartialSocialConcept().description.firstUppercased
        },
        {
            return MartialSocialConcept().description.firstUppercased
        },
        {
            return TownName().description
        },
        {
            return WeirdName(syllableCount: 3).description
        },
        {
            return OceanShipNameObject().description.firstUppercased
        },
        {
            return "\(OceanShipNameColor()) \(OceanShipNameObject())".capitalized
        },
        {
            return "\(TimeOfDay()) \(MartialSocialConcept())".capitalized
        },
        {
            let oceanShipNameObject = OceanShipNameObject().description.firstUppercased
            return "\(TownName()) \(oceanShipNameObject)"
        },
        {
            let oceanShipNameObject = OceanShipNameObject().description.firstUppercased
            let martialSocialConcept = MartialSocialConcept().description.firstUppercased
            return "\(oceanShipNameObject) of \(martialSocialConcept)"
        },
        {
            let femaleName = CommonPersonGivenName(gender: .female).description
            let possessiveFemaleName: String
            if femaleName.last == "s" {
                possessiveFemaleName = "\(femaleName)'"
            } else {
                possessiveFemaleName = "\(femaleName)'s"
            }
            let martialSocialConcept = MartialSocialConcept().description.firstUppercased
            return "\(possessiveFemaleName) \(martialSocialConcept)"
        },
        {
            let femaleName = CommonPersonGivenName(gender: .female).description
            let possessiveFemaleName: String
            if femaleName.last == "s" {
                possessiveFemaleName = "\(femaleName)'"
            } else {
                possessiveFemaleName = "\(femaleName)'s"
            }
            let oceanShipNameObject = OceanShipNameObject().description.firstUppercased
            return "\(possessiveFemaleName) \(oceanShipNameObject)"
        },
        {
            let martialSocialConcept = MartialSocialConcept().description.firstUppercased
            let possessiveMartialSocialConcept: String
            if martialSocialConcept.last == "s" {
                possessiveMartialSocialConcept = "\(martialSocialConcept)'"
            } else {
                possessiveMartialSocialConcept = "\(martialSocialConcept)'s"
            }
            let oceanShipNameObject = OceanShipNameObject().description.firstUppercased
            return "\(possessiveMartialSocialConcept) \(oceanShipNameObject)"
        },
    ]
    
    private let value: String
    
    public init() {
        value = OceanShipName.formatters.randomElement()!()
    }
    
}

extension OceanShipName: CustomStringConvertible {
    public var description: String {
        return value
    }
}

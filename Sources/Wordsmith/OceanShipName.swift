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
            let thing: CustomStringConvertible = Bool.random(probability: 75) ? OceanShipNameObject() : PrimitiveWeapon()
            return "\(OceanShipNameColor()) \(thing)".capitalized
        },
        {
            return ShipNameAdjective().description.firstUppercased
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 85) ? OceanShipNameObject() : PrimitiveWeapon()
            return "\(ShipNameAdjective()) \(thing)".capitalized
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 85) ? OceanShipNameObject() : PrimitiveWeapon()
            return "\(ShipNameAdjective()) \(thing)".capitalized
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 75) ? MartialSocialConcept() : PrimitiveWeapon()
            return "\(TimeOfDay()) \(thing)".capitalized
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 85) ? OceanShipNameObject() : PrimitiveWeapon()
            return "\(TownName()) \(thing)".capitalized
        },
        {
            let thing = Bool.random() ?
                OceanShipNameObject().description.firstUppercased :
                PrimitiveWeapon().description.firstUppercased
            let concept = Bool.random() ? MartialSocialConcept().description.firstUppercased : TownName().description
            return "\(thing) of \(concept)"
        },
        {
            let possessiveOwner: String
            switch Int.random(in: 0...2) {
            case 0:
                let martialSocialConcept = MartialSocialConcept().description.firstUppercased
                let possessiveMartialSocialConcept: String
                if martialSocialConcept.last == "s" {
                    possessiveMartialSocialConcept = "\(martialSocialConcept)'"
                } else {
                    possessiveMartialSocialConcept = "\(martialSocialConcept)'s"
                }
                possessiveOwner = possessiveMartialSocialConcept
                
            default:
                let gender: Gender = Bool.random(probability: 75) ? .female : .male
                let personName = CommonPersonGivenName(gender: gender).description
                let possessivePersonName: String
                if personName.last == "s" {
                    possessivePersonName = "\(personName)'"
                } else {
                    possessivePersonName = "\(personName)'s"
                }
                possessiveOwner = possessivePersonName
            }
            
            let thing = Bool.random() ?
                OceanShipNameObject().description.firstUppercased :
                PrimitiveWeapon().description.firstUppercased

            return "\(possessiveOwner) \(thing)"
        },
    {
        let possessiveOwner: String
        switch Int.random(in: 0...2) {
        case 0:
            let martialSocialConcept = MartialSocialConcept().description.firstUppercased
            let possessiveMartialSocialConcept: String
            if martialSocialConcept.last == "s" {
                possessiveMartialSocialConcept = "\(martialSocialConcept)'"
            } else {
                possessiveMartialSocialConcept = "\(martialSocialConcept)'s"
            }
            possessiveOwner = possessiveMartialSocialConcept
            
        default:
            let gender: Gender = Bool.random(probability: 75) ? .female : .male
            let personName = CommonPersonGivenName(gender: gender).description
            let possessivePersonName: String
            if personName.last == "s" {
                possessivePersonName = "\(personName)'"
            } else {
                possessivePersonName = "\(personName)'s"
            }
            possessiveOwner = possessivePersonName
        }
        
        let martialSocialConcept = MartialSocialConcept().description.firstUppercased
        return "\(possessiveOwner) \(martialSocialConcept)"
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

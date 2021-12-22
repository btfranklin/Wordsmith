//  Created by B.T. Franklin on 7/8/18

import Foundation

public struct OceanShipName: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            GivenName(gender: .female).description
        },
        {
            GivenName(gender: .female).description
        },
        {
            GivenName(gender: .female).description
        },
        {
            GivenName(gender: .female).description
        },
        {
            MartialSocialConcept().description.firstUppercased
        },
        {
            MartialSocialConcept().description.firstUppercased
        },
        {
            TownName().description
        },
        {
            WeirdName(syllableCount: 3).description
        },
        {
            OceanShipNameObject().description.firstUppercased
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 0.75) ? OceanShipNameObject() : PrimitiveWeapon()
            return "\(OceanShipNameColor()) \(thing)".capitalized
        },
        {
            ShipNameAdjective().description.firstUppercased
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 0.85) ? OceanShipNameObject() : PrimitiveWeapon()
            return "\(ShipNameAdjective()) \(thing)".capitalized
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 0.85) ? OceanShipNameObject() : PrimitiveWeapon()
            return "\(ShipNameAdjective()) \(thing)".capitalized
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 0.75) ? MartialSocialConcept() : PrimitiveWeapon()
            return "\(TimeOfDay()) \(thing)".capitalized
        },
        {
            let thing: CustomStringConvertible = Bool.random(probability: 0.85) ? OceanShipNameObject() : PrimitiveWeapon()
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
                let gender: BinaryGender = Bool.random(probability: 0.75) ? .female : .male
                let possessivePersonName = GivenName(gender: gender).possessiveForm
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
            let gender: BinaryGender = Bool.random(probability: 0.75) ? .female : .male
            let possessivePersonName = GivenName(gender: gender).possessiveForm
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
        value
    }
}

//  Created by B.T. Franklin on 6/11/22

public struct NauticalShipName: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let component: TextComponent

        switch Int.random(in: 1...18, using: &randomNumberGenerator) {
        case 1...4:
            component = GivenName(gender: .female)

        case 5...7:
            component = MartialSocialConcept()

        case 8:
            component = TownName()

        case 9:
            component = WeirdName(syllableCount: 3)

        case 10:
            component = NauticalShipNameObject()

        case 11:
            component = ShipNameAdjective()

        case 12:
            component = Text(separator: " ") {
                NauticalShipNameColor()
                Either(firstOptionProbability: 0.75) {
                    NauticalShipNameObject()
                    PrimitiveWeapon()
                }
            }

        case 13...14:
            component = Text(separator: " ") {
                ShipNameAdjective()
                Either(firstOptionProbability: 0.85) {
                    NauticalShipNameObject()
                    PrimitiveWeapon()
                }
            }

        case 15:
            component = Text(separator: " ") {
                TimeOfDay()
                Either(firstOptionProbability: 0.75) {
                    MartialSocialConcept()
                    PrimitiveWeapon()
                }
            }

        case 16:
            component = Text(separator: " ") {
                TownName()
                Either(firstOptionProbability: 0.85) {
                    NauticalShipNameObject()
                    PrimitiveWeapon()
                }
            }

        case 17:
            component = Text(separator: " ") {
                Either {
                    NauticalShipNameObject()
                    PrimitiveWeapon()
                }
                "of"
                Either {
                    MartialSocialConcept()
                    TownName()
                }
            }

        default:
            component = Text(separator: " ") {
                Either(firstOptionProbability: 0.33) {
                    MartialSocialConcept().firstUppercased()
                    GivenName(gender: Bool.random(probability: 0.75, using: &randomNumberGenerator) ? .female : .male)
                }.possessiveForm()
                Either {
                    Either {
                        NauticalShipNameObject()
                        PrimitiveWeapon()
                    }
                    MartialSocialConcept()
                }
            }
        }

        return component.titleCased().makeText(using: &randomNumberGenerator)
    }
}

//  Created by B.T. Franklin on 6/11/22

public struct NauticalShipNameGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let generator: TextComponent

        switch Int.random(in: 1...18, using: &randomNumberGenerator) {
        case 1...4:
            generator = GivenNameGenerator(gender: .female)

        case 5...7:
            generator = MartialSocialConcept().firstUppercased()

        case 8:
            generator = TownNameGenerator()

        case 9:
            generator = WeirdNameGenerator(syllableCount: 3)

        case 10:
            generator = NauticalShipNameObject().firstUppercased()

        case 11:
            generator = ShipNameAdjective().firstUppercased()

        case 12:
            generator = Text(separator: " ") {
                NauticalShipNameColor()
                Bool.random(probability: 0.75, using: &randomNumberGenerator)
                ? NauticalShipNameObject() as TextComponent
                : PrimitiveWeapon() as TextComponent
            }.capitalized()

        case 13...14:
            generator = Text(separator: " ") {
                ShipNameAdjective()
                Bool.random(probability: 0.85, using: &randomNumberGenerator)
                ? NauticalShipNameObject() as TextComponent
                : PrimitiveWeapon() as TextComponent
            }.capitalized()

        case 15:
            generator = Text(separator: " ") {
                TimeOfDay()
                Bool.random(probability: 0.75, using: &randomNumberGenerator)
                ? MartialSocialConcept() as TextComponent
                : PrimitiveWeapon() as TextComponent
            }.capitalized()

        case 16:
            generator = Text(separator: " ") {
                TownNameGenerator()
                Bool.random(probability: 0.85, using: &randomNumberGenerator)
                ? NauticalShipNameObject() as TextComponent
                : PrimitiveWeapon() as TextComponent
            }.capitalized()

        case 17:
            generator = Text(separator: " ") {
                (Bool.random(using: &randomNumberGenerator)
                 ? NauticalShipNameObject() as TextComponent
                 : PrimitiveWeapon()
                ).firstUppercased()
                "of"
                Bool.random(using: &randomNumberGenerator)
                ? MartialSocialConcept().firstUppercased()
                : TownNameGenerator()
            }

        default:
            generator = Text(separator: " ") {
                (Bool.random(probability: 0.33, using: &randomNumberGenerator)
                 ? MartialSocialConcept().firstUppercased()
                 : GivenNameGenerator(gender: Bool.random(probability: 0.75, using: &randomNumberGenerator) ? .female : .male)
                ).possessiveForm()
                Text {
                    if Bool.random(using: &randomNumberGenerator) {
                        (Bool.random(using: &randomNumberGenerator)
                         ? NauticalShipNameObject() as TextComponent
                         : PrimitiveWeapon()
                        )
                    } else {
                        MartialSocialConcept()
                    }
                }.firstUppercased()
            }
        }

        return generator.makeText(using: &randomNumberGenerator)
    }
}

//  Created by B.T. Franklin on 6/11/22

public struct NauticalShipNameGenerator: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let generator: TextComponent

        switch Int.random(in: 1...18, using: &randomNumberGenerator) {
        case 1...4:
            generator = GivenNameGenerator(gender: .female)

        case 5...7:
            generator = MartialSocialConceptGenerator().firstUppercased()

        case 8:
            generator = TownNameGenerator()

        case 9:
            generator = WeirdNameGenerator(syllableCount: 3)

        case 10:
            generator = NauticalShipNameObjectGenerator().firstUppercased()

        case 11:
            generator = ShipNameAdjectiveGenerator().firstUppercased()

        case 12:
            generator = Text(separator: " ") {
                NauticalShipNameColorGenerator()
                Bool.random(probability: 0.75, using: &randomNumberGenerator)
                ? NauticalShipNameObjectGenerator() as TextComponent
                : PrimitiveWeaponGenerator() as TextComponent
            }.capitalized()

        case 13...14:
            generator = Text(separator: " ") {
                ShipNameAdjectiveGenerator()
                Bool.random(probability: 0.85, using: &randomNumberGenerator)
                ? NauticalShipNameObjectGenerator() as TextComponent
                : PrimitiveWeaponGenerator() as TextComponent
            }.capitalized()

        case 15:
            generator = Text(separator: " ") {
                TimeOfDayGenerator()
                Bool.random(probability: 0.75, using: &randomNumberGenerator)
                ? MartialSocialConceptGenerator() as TextComponent
                : PrimitiveWeaponGenerator() as TextComponent
            }.capitalized()

        case 16:
            generator = Text(separator: " ") {
                TownNameGenerator()
                Bool.random(probability: 0.85, using: &randomNumberGenerator)
                ? NauticalShipNameObjectGenerator() as TextComponent
                : PrimitiveWeaponGenerator() as TextComponent
            }.capitalized()

        case 17:
            generator = Text(separator: " ") {
                (Bool.random(using: &randomNumberGenerator)
                 ? NauticalShipNameObjectGenerator() as TextComponent
                 : PrimitiveWeaponGenerator()
                ).firstUppercased()
                "of"
                Bool.random(using: &randomNumberGenerator)
                ? MartialSocialConceptGenerator().firstUppercased()
                : TownNameGenerator()
            }

        default:
            generator = Text(separator: " ") {
                (Bool.random(probability: 0.33, using: &randomNumberGenerator)
                 ? MartialSocialConceptGenerator().firstUppercased()
                 : GivenNameGenerator(gender: Bool.random(probability: 0.75, using: &randomNumberGenerator) ? .female : .male)
                ).possessiveForm()
                Text {
                    if Bool.random(using: &randomNumberGenerator) {
                        (Bool.random(using: &randomNumberGenerator)
                         ? NauticalShipNameObjectGenerator() as TextComponent
                         : PrimitiveWeaponGenerator()
                        )
                    } else {
                        MartialSocialConceptGenerator()
                    }
                }.firstUppercased()
            }
        }

        return generator.makeText(using: &randomNumberGenerator)
    }
}

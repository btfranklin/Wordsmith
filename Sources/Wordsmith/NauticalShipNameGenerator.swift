//  Created by B.T. Franklin on 6/11/22

public struct NauticalShipNameGenerator: TextGeneratorComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let generator: TextGeneratorComponent

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
            generator = TextGenerator(separator: " ") {
                NauticalShipNameColorGenerator()
                Bool.random(probability: 0.75, using: &randomNumberGenerator)
                ? NauticalShipNameObjectGenerator() as TextGeneratorComponent
                : PrimitiveWeaponGenerator() as TextGeneratorComponent
            }.capitalized()

        case 13...14:
            generator = TextGenerator(separator: " ") {
                ShipNameAdjectiveGenerator()
                Bool.random(probability: 0.85, using: &randomNumberGenerator)
                ? NauticalShipNameObjectGenerator() as TextGeneratorComponent
                : PrimitiveWeaponGenerator() as TextGeneratorComponent
            }.capitalized()

        case 15:
            generator = TextGenerator(separator: " ") {
                TimeOfDayGenerator()
                Bool.random(probability: 0.75, using: &randomNumberGenerator)
                ? MartialSocialConceptGenerator() as TextGeneratorComponent
                : PrimitiveWeaponGenerator() as TextGeneratorComponent
            }.capitalized()

        case 16:
            generator = TextGenerator(separator: " ") {
                TownNameGenerator()
                Bool.random(probability: 0.85, using: &randomNumberGenerator)
                ? NauticalShipNameObjectGenerator() as TextGeneratorComponent
                : PrimitiveWeaponGenerator() as TextGeneratorComponent
            }.capitalized()

        case 17:
            generator = TextGenerator(separator: " ") {
                (Bool.random(using: &randomNumberGenerator)
                 ? NauticalShipNameObjectGenerator() as TextGeneratorComponent
                 : PrimitiveWeaponGenerator()
                ).firstUppercased()
                "of"
                Bool.random(using: &randomNumberGenerator)
                ? MartialSocialConceptGenerator().firstUppercased()
                : TownNameGenerator()
            }

        default:
            generator = TextGenerator(separator: " ") {
                (Bool.random(probability: 0.33, using: &randomNumberGenerator)
                 ? MartialSocialConceptGenerator().firstUppercased()
                 : GivenNameGenerator(gender: Bool.random(probability: 0.75, using: &randomNumberGenerator) ? .female : .male)
                ).possessiveForm()
                TextGenerator {
                    if Bool.random(using: &randomNumberGenerator) {
                        (Bool.random(using: &randomNumberGenerator)
                         ? NauticalShipNameObjectGenerator() as TextGeneratorComponent
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

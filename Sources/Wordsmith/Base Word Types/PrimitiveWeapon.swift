//  Created by B.T. Franklin on 9/11/19

public struct PrimitiveWeapon {
    
    static let options: [String] = [
        "sword",
        "blade",
        "mace",
        "hammer",
        "knife",
        "dagger",
        "axe",
        "halberd",
        "glaive",
        "spear",
        "lance",
        "pike",
        "bow",
        "crossbow"
    ]
    
    private let value: String
    
    public init(plural: Bool = false) {
        var primitiveWeapon = PrimitiveWeapon.options.randomElement()!

        if plural {
            if primitiveWeapon.hasSuffix("ife") {
                primitiveWeapon = primitiveWeapon.dropLast(2).description
                primitiveWeapon += "ves"
            } else {
                primitiveWeapon += "s"
            }
        }

        value = primitiveWeapon
    }
    
}

extension PrimitiveWeapon: CustomStringConvertible {
    public var description: String {
        value
    }
}

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
    
    public init() {
        value = PrimitiveWeapon.options.randomElement()!
    }
    
}

extension PrimitiveWeapon: CustomStringConvertible {
    public var description: String {
        value
    }
}

//  Created by B.T. Franklin on 7/10/18

import Foundation

public struct OceanShipNameColor {
    
    static let options: [String] = [
        "amber",
        "black",
        "blue",
        "bronze",
        "copper",
        "golden",
        "gray",
        "green",
        "ivory",
        "jade",
        "obsidian",
        "red",
        "silver",
        "white",
    ]
    
    private let value: String
    
    public init() {
        value = OceanShipNameColor.options.randomElement()!
    }
    
}

extension OceanShipNameColor: CustomStringConvertible {
    public var description: String {
        value
    }
}

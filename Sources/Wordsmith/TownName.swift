//  Created by B.T. Franklin on 3/23/18

import Foundation
import StringBooster

public struct TownName: Hashable {
    
    static let nameRarePrefixWords = [
        "Saint", "Mount", "Lake"
    ]
    
    static let namePrefixWords = [
        "Fort", "Port", "Cape"
    ]

    static let nameRareSuffixWords = [
        "River", "Hill", "Town", "Beach", "Village"
    ]
    
    static let nameSuffixWords = [
        "Bay", "Point", "City", "Park"
    ]
    
    static let nameSuffixes = [
        "ton", "burg", "ville", "town", "dale"
    ]
    
    private let value: String
    
    public init() {
        let surname = Surname()
        var str: String
        
        switch Int.random(in: 0...100) {
        case 0...9:
            str = "\(surname) \(TownName.nameSuffixWords.randomElement()!)"

        case 10...19:
            str = "\(TownName.namePrefixWords.randomElement()!) \(surname)"
            
        case 20...24:
            str = "\(surname) \(TownName.nameRareSuffixWords.randomElement()!)"

        case 25...29:
            str = "\(TownName.nameRarePrefixWords.randomElement()!) \(surname)"
            
        case 30...31:
            str = "New \(surname)\(TownName.nameSuffixes.randomElement()!)"
            
        case 32...35:
            let locationAdjective = LocationAdjective().description.firstUppercased
            str = "\(locationAdjective) \(TownName.nameSuffixWords.randomElement()!)"

        case 36...38:
            let locationAdjective = LocationAdjective().description.firstUppercased
            str = "\(locationAdjective) \(TownName.nameRareSuffixWords.randomElement()!)"

        default:
            str = "\(surname)\(TownName.nameSuffixes.randomElement()!)"
        }
        
        value = str
    }
    
}

extension TownName: CustomStringConvertible {
    public var description: String {
        value
    }
}


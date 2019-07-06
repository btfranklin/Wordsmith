//  Created by B.T. Franklin on 7/8/18

import Foundation

public struct MartialSocialConcept {
    
    static let options: [String] = [
        "ambush",
        "anger",
        "betrayal",
        "conquest",
        "courage",
        "death",
        "delight",
        "despair",
        "devastation",
        "discipline",
        "domination",
        "famine",
        "freedom",
        "fury",
        "glory",
        "hatred",
        "honor",
        "independence",
        "justice",
        "liberation",
        "liberty",
        "mercy",
        "murder",
        "pestilence",
        "plunder",
        "pride",
        "rage",
        "regret",
        "reprisal",
        "retribution",
        "revenge",
        "righteousness",
        "slaughter",
        "terror",
        "transgression",
        "triumph",
        "vengeance",
        "victory",
        "wrath",
    ]
    
    private let value: String
    
    public init() {
        value = MartialSocialConcept.options.randomElement()!
    }
    
}

extension MartialSocialConcept: CustomStringConvertible {
    public var description: String {
        return value
    }
}

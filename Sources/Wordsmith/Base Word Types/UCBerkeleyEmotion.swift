//  Created by B.T. Franklin on 9/11/19

import Foundation

public struct UCBerkeleyEmotion {
    
    static let options: [String] = [
        "admiration",
        "adoration",
        "appreciation",
        "amusement",
        "anxiety",
        "awe",
        "awkwardness",
        "boredom",
        "calmness",
        "confusion",
        "craving",
        "disgust",
        "empathy",
        "entrancement",
        "envy",
        "excitement",
        "fear",
        "horror",
        "interest",
        "joy",
        "nostalgia",
        "romance",
        "sadness",
        "satisfaction",
        "lust",
        "sympathy",
        "triumph"
    ]
    
    private let value: String
    
    public init() {
        value = UCBerkeleyEmotion.options.randomElement()!
    }
    
}

extension UCBerkeleyEmotion: CustomStringConvertible {
    public var description: String {
        value
    }
}


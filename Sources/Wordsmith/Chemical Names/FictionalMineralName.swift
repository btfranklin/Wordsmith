//  Created by B.T. Franklin on 1/24/21.

import Foundation
import DunesailerUtilities

public struct FictionalMineralName: Hashable {

    private static let rootWordProviders: [() -> CustomStringConvertible] = [
        {
            GivenName()
        },
        {
            WeirdName(syllableCount: 2, allowHyphen: false, allowApostrophe: false)
        },
    ]

    private let value: String

    public init() {
        let rootWord = FictionalMineralName.rootWordProviders.randomElement()!().description.lowercased()
        let rootWordLastLetter = rootWord.last!
        let suffix = ["ite", "alt", "um"].randomElement()!

        switch rootWordLastLetter {
        case "a","o","u":
            let joiningLetter = ["b", "m", "n"].randomElement()!
            value = "\(rootWord)\(joiningLetter)\(suffix)"
        case "e","y","i":
            value = "\(rootWord.dropLast(1))\(suffix)"
        default:
            value = "\(rootWord)\(suffix)"
        }
    }

}

extension FictionalMineralName: CustomStringConvertible {
    public var description: String {
        value
    }
}

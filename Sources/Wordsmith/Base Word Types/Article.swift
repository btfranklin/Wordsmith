//  Created by B.T. Franklin on 1/24/21.

import Foundation

public struct Article {

    private let value: String

    public init(forVowel: Bool = false) {

        var value = Bool.random() ? "a" : "the"

        if value == "a" && forVowel {
            value = "an"
        }

        self.value = value
    }

}

extension Article: CustomStringConvertible {
    public var description: String {
        value
    }
}


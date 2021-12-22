//  Created by B.T. Franklin on 3/10/17.

import Foundation

public struct PersonName: Hashable {
    
    public let givenName: String
    public let surname: String
    
    public init(gender: BinaryGender) {
        givenName = GivenName(gender: gender).description
        surname = Surname().description
    }

    public init() {
        self.init(gender: Bool.random() ? .male : .female)
    }
}

extension PersonName: CustomStringConvertible {
    public var description: String {
        "\(givenName) \(surname)"
    }
}

extension PersonName {
    public var possessiveForm: String {
        description.last == "s" ? "\(description)'" : "\(description)'s"
    }
}

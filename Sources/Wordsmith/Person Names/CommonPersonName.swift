//  Created by B.T. Franklin on 3/10/17.

import Foundation
import DunesailerUtilities

public struct CommonPersonName: PersonName {
    
    public private(set) var givenName: String
    public private(set) var surname: String
    
    public init() {
        self.init(gender: Bool.random() ? .male : .female)
    }

    public init(gender: Gender) {
        givenName = CommonPersonGivenName(gender: gender).description
        surname = CommonPersonSurname().description
    }
    
}

extension CommonPersonName: CustomStringConvertible {
    public var description: String {
        return "\(givenName) \(surname)"
    }
}


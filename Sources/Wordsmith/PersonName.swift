//  Created by B.T. Franklin on 5/27/18

public protocol PersonName: CustomStringConvertible, Hashable {
    var givenName: String { get }
    var surname: String { get }
}

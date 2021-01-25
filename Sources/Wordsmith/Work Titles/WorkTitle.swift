import Foundation

public struct WorkTitle: Hashable {
    
    private let value: String
    
    public init() {
        value = Bool.random(probability: 85) ? SimpleWorkTitle().description : UnusualWorkTitle().description
    }
}

extension WorkTitle: CustomStringConvertible {
    public var description: String {
        value
    }
}

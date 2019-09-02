import Foundation

public struct WorkTitle: Hashable {
    
    private static let formatters: [() -> String] = [
        {
            return SimpleWorkTitle().description
        },
        {
            return SimpleWorkTitle().description
        },
        {
            return SimpleWorkTitle().description
        },
        {
            return ComplexWorkTitle().description
        },
    ]
    
    private let value: String
    
    public init() {
        value = WorkTitle.formatters.randomElement()!()
    }
    
}

extension WorkTitle: CustomStringConvertible {
    public var description: String {
        return value
    }
}

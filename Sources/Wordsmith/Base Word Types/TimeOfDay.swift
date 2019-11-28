import Foundation

public struct TimeOfDay {
    
    static let options: [String] = [
        "midnight",
        "night",
        "morning",
        "dawn",
        "sunrise",
        "daytime",
        "midday",
        "afternoon",
        "evening",
        "dusk",
        "twilight",
        "sunset",
    ]
    
    private let value: String
    
    public init() {
        value = TimeOfDay.options.randomElement()!
    }
    
}

extension TimeOfDay: CustomStringConvertible {
    public var description: String {
        value
    }
}

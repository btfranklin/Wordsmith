import Foundation

public struct Determiner {
    
    static let options: [String] = [
        "a",
        "the",
        "my",
        "your",
        "our",
        "her",
        "his",
    ]
    
    private let value: String
    public let isArticle: Bool
    
    public init(forVowel: Bool = false) {
        
        var value = Determiner.options.randomElement()!
        
        if value == "a" {
            isArticle = true
            
            if forVowel {
                value = "an"
            }
        } else if value == "the" {
            isArticle = true
        } else {
            isArticle = false
        }
        
        self.value = value
    }
    
}

extension Determiner: CustomStringConvertible {
    public var description: String {
        value
    }
}


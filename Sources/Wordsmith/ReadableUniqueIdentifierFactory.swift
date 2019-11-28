import Foundation

public class ReadableUniqueIdentifierFactory {
    
    public static let sharedInstance = ReadableUniqueIdentifierFactory()
    
    private let formatters: [(Int) -> String] = [
        {
            "\(Adjective())_\(Noun())_\($0)"
        },
        {
            "\(Adverb())_\(Verb(tense:.presentPerfect))_\($0)"
        }
    ]
    
    private var counter = 0
    
    public func createReadableUniqueIdentifier() -> String {
        let readableUniqueIdentifier = formatters.randomElement()!(counter)
        counter += 1
        return readableUniqueIdentifier
    }
}

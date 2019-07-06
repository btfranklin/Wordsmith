import Foundation

public class ReadableUniqueIdentifierFactory {
    
    public static let sharedInstance = ReadableUniqueIdentifierFactory()
    
    private let formatters: [(Int) -> String] = [
        {
            return "\(Adjective())_\(Noun())_\($0)"
        },
        {
            return "\(Adverb())_\(Verb(tense:"present perfect"))_\($0)"
        }
    ]
    
    private var counter = 0
    
    public func createReadableUniqueIdentifier() -> String {
        let readableUniqueIdentifier = formatters.randomElement()!(counter)
        counter += 1
        return readableUniqueIdentifier
    }
}

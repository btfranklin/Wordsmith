public class ReadableUniqueIdentifierFactory {
    
    public static let sharedInstance = ReadableUniqueIdentifierFactory()
    
    private var counter = 0

    public func makeIdentifier(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let readableUniqueIdentifier: String

        if Bool.random(using: &randomNumberGenerator) {
            readableUniqueIdentifier = Text(separator: "_") {
                Adjective()
                Noun()
                String(counter)
            }.makeText()

        } else {
            readableUniqueIdentifier = Text(separator: "_") {
                Adverb()
                Verb(tense: .presentPerfect)
                String(counter)
            }.makeText()

        }
        counter += 1

        return readableUniqueIdentifier
    }
    
    public func makeIdentifier() -> String {
        var randomNumberGenerator = SystemRandomNumberGenerator()
        return makeIdentifier(using: &randomNumberGenerator)
    }
}

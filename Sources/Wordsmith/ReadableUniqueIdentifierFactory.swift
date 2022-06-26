public class ReadableUniqueIdentifierFactory {
    
    public static let sharedInstance = ReadableUniqueIdentifierFactory()
    
    private var counter = 0

    public func makeIdentifier(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let readableUniqueIdentifier: String

        if Bool.random(using: &randomNumberGenerator) {
            readableUniqueIdentifier = TextGenerator(separator: "_") {
                AdjectiveGenerator()
                NounGenerator()
                String(counter)
            }.makeText()

        } else {
            readableUniqueIdentifier = TextGenerator(separator: "_") {
                AdverbGenerator()
                VerbGenerator(tense: .presentPerfect)
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

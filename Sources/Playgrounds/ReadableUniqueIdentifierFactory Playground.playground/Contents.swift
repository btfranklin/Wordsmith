import Wordsmith

for _ in 1...20 {
    let identifier = ReadableUniqueIdentifierFactory.sharedInstance.createReadableUniqueIdentifier()
    print(identifier)
}

import Wordsmith

for _ in 0...20 {
    let identifier = ReadableUniqueIdentifierFactory.sharedInstance.createReadableUniqueIdentifier()
    print(identifier)
}

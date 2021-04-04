import Wordsmith

for _ in 1...20 {
    let character = ExoticCharacterFactory.sharedInstance.randomCharacter()
    print(character)
}

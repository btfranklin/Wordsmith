import Wordsmith

for _ in 0...20 {
    let character = ExoticCharacterFactory.sharedInstance.getRandomCharacter()
    print(character)
}

import Wordsmith

for _ in 1...20 {
    let name = Top200PersonGivenName(gender: .male)
    print("Male: \(name)")
}

for _ in 1...20 {
    let name = Top200PersonGivenName(gender: .female)
    print("Female: \(name)")
}

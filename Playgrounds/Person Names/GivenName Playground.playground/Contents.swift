import Wordsmith

for _ in 1...20 {
    let name = GivenName(gender: .male)
    print("Male: \(name)")
}

for _ in 1...20 {
    let name = GivenName(gender: .female)
    print("Female: \(name)")
}

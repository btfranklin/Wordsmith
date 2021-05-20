import Wordsmith

for _ in 1...20 {
    let name = PersonName(gender: .male)
    print("Male: \(name)")
}

for _ in 1...20 {
    let name = PersonName(gender: .female)
    print("Female: \(name)")
}


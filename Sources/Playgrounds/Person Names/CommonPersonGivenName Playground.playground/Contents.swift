import Wordsmith

for _ in 1...20 {
    let name = CommonPersonGivenName(gender: .male)
    print("Male: \(name)")
}

for _ in 1...20 {
    let name = CommonPersonGivenName(gender: .female)
    print("Female: \(name)")
}

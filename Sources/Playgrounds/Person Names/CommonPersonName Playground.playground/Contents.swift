import Wordsmith

for _ in 1...20 {
    let name = CommonPersonName(gender: .male)
    print("Male: \(name)")
}

for _ in 1...20 {
    let name = CommonPersonName(gender: .female)
    print("Female: \(name)")
}


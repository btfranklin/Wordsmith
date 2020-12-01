import Wordsmith

print("--- Two-syllable names ---")
for _ in 1...10 {
    let name = WeirdName(syllableCount: 2)
    print(name)
}

print("--- Three-syllable names ---")
for _ in 1...10 {
    let name = WeirdName(syllableCount: 3)
    print(name)
}

print("--- Three-syllable names, disallowing hyphens and apostrophes ---")
for _ in 1...10 {
    let name = WeirdName(syllableCount: 3, allowHyphen: false, allowApostrophe: false)
    print(name)
}

print("--- Six-syllable names ---")
for _ in 1...10 {
    let name = WeirdName(syllableCount: 6)
    print(name)
}

print("--- Ten-syllable names ---")
for _ in 1...10 {
    let name = WeirdName(syllableCount: 10)
    print(name)
}

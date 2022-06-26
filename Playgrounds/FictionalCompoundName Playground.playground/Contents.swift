import Wordsmith

print("--- Default Initialization --")
for _ in 1...20 {
    let fictionalCompoundName = FictionalCompoundName()
    print(fictionalCompoundName)
}

print("--- Initialization with element names ---")
for _ in 1...20 {
    let component1 = FictionalElementName().description
    let component2 = FictionalElementName().description
    let fictionalCompoundName = FictionalCompoundName(components: [component1, component2])
    print("\(component1) + \(component2) -> \(fictionalCompoundName)")
}

print("--- Initialization with elements ---")
for _ in 1...20 {
    let component1 = FictionalElementName()
    let component2 = FictionalElementName()
    let fictionalCompoundName = FictionalCompoundName(components: [component1, component2])
    print("\(component1) + \(component2) -> \(fictionalCompoundName)")
}

print("--- Initialization with arbitrary strings ---")
for _ in 1...20 {
    let component1 = Verb(tense:.present)
    let component2 = Adjective()
    let fictionalCompoundName = FictionalCompoundName(components: [component1, component2])
    print("\(component1) + \(component2) -> \(fictionalCompoundName)")
}

//  Created by B.T. Franklin on 6/12/22

public struct TownName: TextComponent {

    public init() {}

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        let component: TextComponent

        switch Int.random(in: 1...100, using: &randomNumberGenerator) {
        case 1...9:
            component = Text(separator: " ") {
                Surname()
                OneOf {
                    "Bay"
                    "Point"
                    "City"
                    "Park"
                }
            }

        case 10...19:
            component = Text(separator: " ") {
                OneOf {
                    "Fort"
                    "Port"
                    "Cape"
                }
                Surname()
            }

        case 20...24:
            component = Text(separator: " ") {
                Surname()
                OneOf {
                    "River"
                    "Hill"
                    "Town"
                    "Beach"
                    "Village"
                }
            }

        case 25...29:
            component = Text(separator: " ") {
                OneOf {
                    "Saint"
                    "Mount"
                    "Lake"
                }
                Surname()
            }

        case 30...31:
            component = Text(separator: " ") {
                "New"
                Text {
                    Surname()
                    OneOf {
                        "ton"
                        "burg"
                        "ville"
                        "town"
                        "dale"
                    }
                }
            }

        case 32...35:
            component = Text(separator: " ") {
                LocationAdjective().firstUppercased()
                OneOf {
                    "Bay"
                    "Point"
                    "City"
                    "Park"
                }
            }

        case 36...38:
            component = Text(separator: " ") {
                LocationAdjective().firstUppercased()
                OneOf {
                    "River"
                    "Hill"
                    "Town"
                    "Beach"
                    "Village"
                }
            }

        default:
            component = Text {
                Surname()
                OneOf {
                    "ton"
                    "burg"
                    "ville"
                    "town"
                    "dale"
                }
            }
        }

        return component.makeText(using: &randomNumberGenerator)
    }
}

//  Created by B.T. Franklin on 6/11/22

public struct VillainousPersonNoun: TextComponent {

    private static let options: [String] = [
        "bandit",
        "brigand",
        "bruiser",
        "buccaneer",
        "burglar",
        "charlatan",
        "corsair",
        "criminal",
        "crook",
        "deceiver",
        "delinquent",
        "demon",
        "desperado",
        "devil",
        "dodger",
        "gunman",
        "hood",
        "scoundrel",
        "sinner",
        "blackguard",
        "brute",
        "creep",
        "dog",
        "filcher",
        "good-for-nothing",
        "goon",
        "grifter",
        "hellion",
        "highwayman",
        "hijacker",
        "hoodlum",
        "hooligan",
        "imp",
        "knave",
        "libertine",
        "looter",
        "lowlife",
        "maggot",
        "malefactor",
        "marauder",
        "mischief-maker",
        "miscreant",
        "mountebank",
        "mugger",
        "murderer",
        "ne'er-do-well",
        "offender",
        "outlaw",
        "pilferer",
        "pirate",
        "profligate",
        "punk",
        "prowler",
        "plunderer",
        "racketeer",
        "rapscallion",
        "rascal",
        "ravager",
        "reprobate",
        "robber",
        "rogue",
        "rook",
        "ruffian",
        "scalawag",
        "shark",
        "swindler",
        "thief",
        "thug",
        "troublemaker",
        "wretch",
        "vagabond",
        "varlet",
        "villain",
    ]

    private let isPlural: Bool

    public init(isPlural: Bool) {
        self.isPlural = isPlural
    }

    public func makeText(using randomNumberGenerator: inout some RandomNumberGenerator) -> String {
        var text = VillainousPersonNoun.options.randomElement(using: &randomNumberGenerator)!

        if isPlural {
            if text.hasSuffix("ay") || text.hasSuffix("ey") || text.hasSuffix("iy") || text.hasSuffix("oy") || text.hasSuffix("uy") {
                text += "s"

            } else if text.last! == "y" {
                text = text.dropLast().description
                text += "ies"

            } else if text.last! == "x" || text.hasSuffix("ss") || text.hasSuffix("sh") || text.hasSuffix("ch") {
                text += "es"

            } else if text.hasSuffix("ife") {
                if text == "lowlife" {
                    text += "s"
                } else {
                    text = text.dropLast(2).description
                    text += "ves"
                }

            } else if text.hasSuffix("rf") {
                text = text.dropLast().description
                text += "ves"

            } else if text.hasSuffix("man") {
                text = text.dropLast(2).description
                text += "en"

            } else if text.last! != "s" {
                text += "s"
            }
        }

        return text
    }
}

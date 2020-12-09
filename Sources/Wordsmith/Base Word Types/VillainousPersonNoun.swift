//  Created by B.T. Franklin on 12/8/20.

import Foundation

public struct VillainousPersonNoun {

    static let options: [String] = [
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

    private let value: String

    public init(plural: Bool = false) {
        var noun = VillainousPersonNoun.options.randomElement()!

        if plural {
            if noun.hasSuffix("ay") || noun.hasSuffix("ey") || noun.hasSuffix("iy") || noun.hasSuffix("oy") || noun.hasSuffix("uy") {
                noun += "s"

            } else if noun.last! == "y" {
                noun = noun.dropLast().description
                noun += "ies"

            } else if noun.last! == "x" || noun.hasSuffix("ss") || noun.hasSuffix("sh") || noun.hasSuffix("ch") {
                noun += "es"

            } else if noun.hasSuffix("ife") {
                if noun == "lowlife" {
                    noun += "s"
                } else {
                    noun = noun.dropLast(2).description
                    noun += "ves"
                }

            } else if noun.hasSuffix("rf") {
                noun = noun.dropLast().description
                noun += "ves"

            } else if noun.hasSuffix("man") {
                noun = noun.dropLast(2).description
                noun += "en"

            } else if noun.last! != "s" {
                noun += "s"
            }
        }

        value = noun
    }

}

extension VillainousPersonNoun: CustomStringConvertible {
    public var description: String {
        value
    }
}

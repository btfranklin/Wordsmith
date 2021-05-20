//  Created by B.T. Franklin on 3/23/18

import Foundation

public struct Surname: Hashable {
    
    static let options: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Common Surnames", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let names = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return names
    }()

    private let value: String
    
    public init() {
        value = Surname.options.randomElement()!
    }
}

extension Surname: CustomStringConvertible {
    public var description: String {
        value
    }
}

extension Surname {
    public var possessiveForm: String {
        value.last == "s" ? "\(value)'" : "\(value)'s"
    }
}

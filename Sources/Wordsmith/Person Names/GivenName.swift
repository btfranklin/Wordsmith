//  Created by B.T. Franklin on 5/30/18

import Foundation
import DunesailerUtilities

public struct GivenName: Hashable {
    
    static let maleNameOptions: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Common Male Given Names", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let names = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return names
    }()
    
    static let femaleNameOptions: [String] = {
        let decoder = JSONDecoder()
        guard
            let url = Bundle.module.url(forResource: "Common Female Given Names", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let names = try? decoder.decode([String].self, from: data)
        else {
            return []
        }

        return names
    }()

    public let gender: BinaryGender
    private let value: String
    
    public init() {
        self.init(gender: Bool.random() ? .male : .female)
    }
    
    public init(gender: BinaryGender) {
        self.gender = gender
        
        switch gender {
        case .male:
            value = GivenName.maleNameOptions.randomElement()!
        case .female:
            value = GivenName.femaleNameOptions.randomElement()!
        }
    }

}

extension GivenName: CustomStringConvertible {
    public var description: String {
        value
    }
}

extension GivenName {
    public var possessiveForm: String {
        value.last == "s" ? "\(value)'" : "\(value)'s"
    }
}

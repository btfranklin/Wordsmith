//  Created by B.T. Franklin on 6/12/22

@testable import Wordsmith

enum ExamplesTestUtil {

    static func printExamples(using component: some TextComponent, count: Int = 10) {
        for _ in 1...count {
            print(component.makeText())
        }
    }

}

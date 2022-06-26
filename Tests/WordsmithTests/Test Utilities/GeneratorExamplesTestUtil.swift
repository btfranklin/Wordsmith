//  Created by B.T. Franklin on 6/12/22

@testable import Wordsmith

enum GeneratorExamplesTestUtil {

    static func printExamples(using generator: some TextGeneratorComponent, count: Int = 10) {
        for _ in 1...count {
            print(generator.makeText())
        }
    }

}

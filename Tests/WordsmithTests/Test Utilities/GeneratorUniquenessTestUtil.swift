//  Created by B.T. Franklin on 6/12/22

@testable import Wordsmith

enum GeneratorUniquenessTestUtil {

    static func countUniqueValuesProduced(using generator: some TextGeneratorComponent, consecutiveRetryLimit: Int = 10) {
        var generatedValues = Set<String>()
        var consecutiveRetries = 0

        while consecutiveRetries < consecutiveRetryLimit {
            let value = generator.makeText()

            if generatedValues.contains(value) {
                consecutiveRetries += 1
            } else {
                generatedValues.insert(value)
                consecutiveRetries = 0
            }
        }

        print("Could no longer generate unique values after \(consecutiveRetries) consecutive retries.")
        print("Final count of unique values: \(generatedValues.count)")
    }

}

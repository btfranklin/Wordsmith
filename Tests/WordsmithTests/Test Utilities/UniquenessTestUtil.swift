//  Created by B.T. Franklin on 6/12/22

@testable import Wordsmith

enum UniquenessTestUtil {

    static func countUniqueValuesProduced(using component: some TextComponent, consecutiveRetryLimit: Int = 10) {
        var generatedValues = Set<String>()
        var consecutiveRetries = 0

        while consecutiveRetries < consecutiveRetryLimit {
            let value = component.makeText()

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

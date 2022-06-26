//  Created by B.T. Franklin on 6/10/22

@resultBuilder
enum TextGeneratorBuilder {

    static func buildBlock() -> [TextGeneratorComponent] {
        [EmptyTextGenerator() as TextGeneratorComponent]
    }

    static func buildBlock(_ components: [TextGeneratorComponent]...) -> [TextGeneratorComponent] {
        components.reduce([], { partialResult, element in
            partialResult + element
        })
    }

    static func buildBlock(_ components: TextGeneratorComponent...) -> [TextGeneratorComponent] {
        components.compactMap { $0 }
    }

    static func buildBlock(_ components: String...) -> [String] {
        components.compactMap { $0 }
    }

    static func buildOptional(_ components: [TextGeneratorComponent]?) -> [TextGeneratorComponent] {
        [components] as? [TextGeneratorComponent] ?? [EmptyTextGenerator()]
    }

    static func buildEither(first components: [TextGeneratorComponent]) -> [TextGeneratorComponent] {
        components
    }

    static func buildEither(second components: [TextGeneratorComponent]) -> [TextGeneratorComponent] {
        components
    }

}

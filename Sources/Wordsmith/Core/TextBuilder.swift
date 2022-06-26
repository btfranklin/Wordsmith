//  Created by B.T. Franklin on 6/10/22

@resultBuilder
enum TextBuilder {

    static func buildBlock() -> [TextComponent] {
        [EmptyText() as TextComponent]
    }

    static func buildBlock(_ components: [TextComponent]...) -> [TextComponent] {
        components.reduce([], { partialResult, element in
            partialResult + element
        })
    }

    static func buildBlock(_ components: TextComponent...) -> [TextComponent] {
        components.compactMap { $0 }
    }

    static func buildBlock(_ components: String...) -> [String] {
        components.compactMap { $0 }
    }

    static func buildOptional(_ components: [TextComponent]?) -> [TextComponent] {
        [components] as? [TextComponent] ?? [EmptyText()]
    }

    static func buildEither(first components: [TextComponent]) -> [TextComponent] {
        components
    }

    static func buildEither(second components: [TextComponent]) -> [TextComponent] {
        components
    }

}

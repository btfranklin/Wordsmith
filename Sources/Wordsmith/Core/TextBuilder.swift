//  Created by B.T. Franklin on 6/10/22

@resultBuilder
public enum TextBuilder {

    public static func buildBlock() -> [TextComponent] {
        [EmptyText() as TextComponent]
    }

    public static func buildBlock(_ components: [TextComponent]...) -> [TextComponent] {
        components.reduce([], { partialResult, element in
            partialResult + element
        })
    }

    public static func buildBlock(_ components: TextComponent...) -> [TextComponent] {
        components.compactMap { $0 }
    }

    public static func buildBlock(_ components: String...) -> [String] {
        components.compactMap { $0 }
    }

    public static func buildOptional(_ components: [TextComponent]?) -> [TextComponent] {
        [components] as? [TextComponent] ?? [EmptyText()]
    }

    public static func buildEither(first components: [TextComponent]) -> [TextComponent] {
        components
    }

    public static func buildEither(second components: [TextComponent]) -> [TextComponent] {
        components
    }

}

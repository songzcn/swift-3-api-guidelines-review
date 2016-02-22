
class CTTypesetter {
}
@available(tvOS 3.2, *)
func CTTypesetterGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
let kCTTypesetterOptionForcedEmbeddingLevel: CFString
@available(tvOS 3.2, *)
func CTTypesetterCreateWithAttributedString(_ string: CFAttributedString) -> CTTypesetter
@available(tvOS 3.2, *)
func CTTypesetterCreateWithAttributedStringAndOptions(_ string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter
@available(tvOS 3.2, *)
func CTTypesetterCreateLineWithOffset(_ typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine
@available(tvOS 3.2, *)
func CTTypesetterCreateLine(_ typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine
@available(tvOS 3.2, *)
func CTTypesetterSuggestLineBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(tvOS 3.2, *)
func CTTypesetterSuggestLineBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
@available(tvOS 3.2, *)
func CTTypesetterSuggestClusterBreakWithOffset(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(tvOS 3.2, *)
func CTTypesetterSuggestClusterBreak(_ typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex

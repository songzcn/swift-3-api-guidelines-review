
@available(iOS 5.0, *)
let NSLinguisticTagSchemeTokenType: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeLexicalClass: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeNameType: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeNameTypeOrLexicalClass: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeLemma: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeLanguage: String
@available(iOS 5.0, *)
let NSLinguisticTagSchemeScript: String
@available(iOS 5.0, *)
let NSLinguisticTagWord: String
@available(iOS 5.0, *)
let NSLinguisticTagPunctuation: String
@available(iOS 5.0, *)
let NSLinguisticTagWhitespace: String
@available(iOS 5.0, *)
let NSLinguisticTagOther: String
@available(iOS 5.0, *)
let NSLinguisticTagNoun: String
@available(iOS 5.0, *)
let NSLinguisticTagVerb: String
@available(iOS 5.0, *)
let NSLinguisticTagAdjective: String
@available(iOS 5.0, *)
let NSLinguisticTagAdverb: String
@available(iOS 5.0, *)
let NSLinguisticTagPronoun: String
@available(iOS 5.0, *)
let NSLinguisticTagDeterminer: String
@available(iOS 5.0, *)
let NSLinguisticTagParticle: String
@available(iOS 5.0, *)
let NSLinguisticTagPreposition: String
@available(iOS 5.0, *)
let NSLinguisticTagNumber: String
@available(iOS 5.0, *)
let NSLinguisticTagConjunction: String
@available(iOS 5.0, *)
let NSLinguisticTagInterjection: String
@available(iOS 5.0, *)
let NSLinguisticTagClassifier: String
@available(iOS 5.0, *)
let NSLinguisticTagIdiom: String
@available(iOS 5.0, *)
let NSLinguisticTagOtherWord: String
@available(iOS 5.0, *)
let NSLinguisticTagSentenceTerminator: String
@available(iOS 5.0, *)
let NSLinguisticTagOpenQuote: String
@available(iOS 5.0, *)
let NSLinguisticTagCloseQuote: String
@available(iOS 5.0, *)
let NSLinguisticTagOpenParenthesis: String
@available(iOS 5.0, *)
let NSLinguisticTagCloseParenthesis: String
@available(iOS 5.0, *)
let NSLinguisticTagWordJoiner: String
@available(iOS 5.0, *)
let NSLinguisticTagDash: String
@available(iOS 5.0, *)
let NSLinguisticTagOtherPunctuation: String
@available(iOS 5.0, *)
let NSLinguisticTagParagraphBreak: String
@available(iOS 5.0, *)
let NSLinguisticTagOtherWhitespace: String
@available(iOS 5.0, *)
let NSLinguisticTagPersonalName: String
@available(iOS 5.0, *)
let NSLinguisticTagPlaceName: String
@available(iOS 5.0, *)
let NSLinguisticTagOrganizationName: String
struct NSLinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: NSLinguisticTaggerOptions { get }
  static var OmitPunctuation: NSLinguisticTaggerOptions { get }
  static var OmitWhitespace: NSLinguisticTaggerOptions { get }
  static var OmitOther: NSLinguisticTaggerOptions { get }
  static var JoinNames: NSLinguisticTaggerOptions { get }
}
@available(iOS 5.0, *)
class NSLinguisticTagger : NSObject {
  @available(iOS 5.0, *)
  init(tagSchemes: [String], options opts: Int)
  @available(iOS 5.0, *)
  var tagSchemes: [String] { get }
  @available(iOS 5.0, *)
  var string: String?
  @available(iOS 5.0, *)
  class func availableTagSchemesForLanguage(language: String) -> [String]
  @available(iOS 5.0, *)
  func setOrthography(orthography: NSOrthography?, range: NSRange)
  @available(iOS 5.0, *)
  func orthographyAtIndex(charIndex: Int, effectiveRange: NSRangePointer) -> NSOrthography?
  @available(iOS 5.0, *)
  func stringEditedInRange(newRange: NSRange, changeInLength delta: Int)
  @available(iOS 5.0, *)
  func enumerateTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func sentenceRangeForRange(range: NSRange) -> NSRange
  @available(iOS 5.0, *)
  func tagAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer) -> String?
  @available(iOS 5.0, *)
  func tagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(iOS 5.0, *)
  func possibleTagsAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(iOS 5.0, *)
  func linguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(iOS 5.0, *)
  func enumerateLinguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
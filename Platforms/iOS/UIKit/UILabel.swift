
@available(iOS 2.0, *)
class UILabel : UIView, NSCoding {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var highlightedTextColor: UIColor?
  var highlighted: Bool
  var userInteractionEnabled: Bool
  var enabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  @available(iOS 6.0, *)
  var minimumScaleFactor: CGFloat
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawTextInRect(rect: CGRect)
  @available(iOS 6.0, *)
  var preferredMaxLayoutWidth: CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
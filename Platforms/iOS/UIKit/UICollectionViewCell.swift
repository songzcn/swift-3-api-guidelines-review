
@available(iOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func apply(_ layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  func didTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  @available(iOS 8.0, *)
  func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var isSelected: Bool
  var isHighlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

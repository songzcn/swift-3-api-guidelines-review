
@available(OSX 10.11, *)
let NSSplitViewControllerAutomaticDimension: CGFloat
@available(OSX 10.10, *)
class NSSplitViewController : NSViewController, NSSplitViewDelegate {
  var splitView: NSSplitView
  var splitViewItems: [NSSplitViewItem]
  func addSplitViewItem(splitViewItem: NSSplitViewItem)
  func insertSplitViewItem(splitViewItem: NSSplitViewItem, atIndex index: Int)
  func removeSplitViewItem(splitViewItem: NSSplitViewItem)
  func splitViewItemForViewController(viewController: NSViewController) -> NSSplitViewItem?
  @available(OSX 10.11, *)
  var minimumThicknessForInlineSidebars: CGFloat
  func viewDidLoad()
  func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  func splitView(splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAtIndex dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, shouldHideDividerAtIndex dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAtIndex dividerIndex: Int) -> NSRect
  func splitView(splitView: NSSplitView, additionalEffectiveRectOfDividerAtIndex dividerIndex: Int) -> NSRect
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  @available(OSX 10.6, *)
  func splitView(splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(OSX 10.10, *)
  func splitViewWillResizeSubviews(notification: NSNotification)
  @available(OSX 10.10, *)
  func splitViewDidResizeSubviews(notification: NSNotification)
}
extension NSSplitViewController {
  @available(OSX 10.11, *)
  @IBAction func toggleSidebar(sender: AnyObject?)
}
@available(OSX 10.11, *)
enum NSSplitViewItemBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Sidebar
  case ContentList
}
@available(OSX 10.11, *)
enum NSSplitViewItemCollapseBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case PreferResizingSplitViewWithFixedSiblings
  case PreferResizingSiblingsWithFixedSplitView
  case UseConstraints
}
@available(OSX 10.11, *)
let NSSplitViewItemUnspecifiedDimension: CGFloat
@available(OSX 10.10, *)
class NSSplitViewItem : NSObject, NSAnimatablePropertyContainer, NSCoding {
  convenience init(viewController: NSViewController)
  @available(OSX 10.11, *)
  convenience init(sidebarWithViewController viewController: NSViewController)
  @available(OSX 10.11, *)
  convenience init(contentListWithViewController viewController: NSViewController)
  @available(OSX 10.11, *)
  var behavior: NSSplitViewItemBehavior { get }
  var viewController: NSViewController
  var collapsed: Bool
  var canCollapse: Bool
  @available(OSX 10.11, *)
  var collapseBehavior: NSSplitViewItemCollapseBehavior
  @available(OSX 10.11, *)
  var minimumThickness: CGFloat
  @available(OSX 10.11, *)
  var maximumThickness: CGFloat
  @available(OSX 10.11, *)
  var preferredThicknessFraction: CGFloat
  var holdingPriority: NSLayoutPriority
  @available(OSX 10.11, *)
  var automaticMaximumThickness: CGFloat
  @available(OSX 10.11, *)
  var springLoaded: Bool
  init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationForKey(key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationForKey(key: String) -> AnyObject?
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
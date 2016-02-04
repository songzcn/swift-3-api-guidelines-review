
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSTextField directly instead, and consider NSStackView for layout assistance")
class NSForm : NSMatrix {
  func indexOfSelectedItem() -> Int
  func setEntryWidth(width: CGFloat)
  func setInterlineSpacing(spacing: CGFloat)
  func setBordered(flag: Bool)
  func setBezeled(flag: Bool)
  func setTitleAlignment(mode: NSTextAlignment)
  func setTextAlignment(mode: NSTextAlignment)
  func setTitleFont(fontObj: NSFont)
  func setTextFont(fontObj: NSFont)
  func cellAtIndex(index: Int) -> AnyObject!
  func drawCellAtIndex(index: Int)
  func addEntry(title: String) -> NSFormCell
  func insertEntry(title: String, atIndex index: Int) -> NSFormCell!
  func removeEntryAtIndex(index: Int)
  func indexOfCellWithTag(aTag: Int) -> Int
  func selectTextAtIndex(index: Int)
  func setFrameSize(newSize: NSSize)
  func setTitleBaseWritingDirection(writingDirection: NSWritingDirection)
  func setTextBaseWritingDirection(writingDirection: NSWritingDirection)
  @available(OSX 10.8, *)
  func setPreferredTextFieldWidth(preferredWidth: CGFloat)
  @available(OSX 10.8, *)
  func preferredTextFieldWidth() -> CGFloat
  convenience init(frame frameRect: NSRect)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, prototype aCell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init?(coder: NSCoder)
  convenience init()
}
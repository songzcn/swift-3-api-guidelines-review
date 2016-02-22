
class NSComboBoxCell : NSTextFieldCell {
  var hasVerticalScroller: Bool
  var intercellSpacing: NSSize
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var isButtonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndex(toTop index: Int)
  func scrollItemAtIndexToVisible(_ index: Int)
  func selectItem(at index: Int)
  func deselectItem(at index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func completedString(_ string: String) -> String?
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxCellDataSource?
  func addItem(_ object: AnyObject)
  func addItems(_ objects: [AnyObject])
  func insertItem(_ object: AnyObject, at index: Int)
  func removeItem(_ object: AnyObject)
  func removeItem(at index: Int)
  func removeAllItems()
  func selectItem(_ object: AnyObject?)
  func itemObjectValue(at index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItem(with object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __cbcFlags {
  var usesDataSource: UInt32
  var completes: UInt32
  var buttonBordered: UInt32
  var popUpIsUp: UInt32
  var filteringEvents: UInt32
  var drawing: UInt32
  var synchronizingSelection: UInt32
  var reserved: UInt32
  var visibleItems: UInt32
  init()
  init(usesDataSource usesDataSource: UInt32, completes completes: UInt32, buttonBordered buttonBordered: UInt32, popUpIsUp popUpIsUp: UInt32, filteringEvents filteringEvents: UInt32, drawing drawing: UInt32, synchronizingSelection synchronizingSelection: UInt32, reserved reserved: UInt32, visibleItems visibleItems: UInt32)
}
protocol NSComboBoxCellDataSource : NSObjectProtocol {
  optional func numberOfItems(in comboBoxCell: NSComboBoxCell) -> Int
  optional func comboBoxCell(_ aComboBoxCell: NSComboBoxCell, objectValueForItemAt index: Int) -> AnyObject
  optional func comboBoxCell(_ aComboBoxCell: NSComboBoxCell, indexOfItemWithStringValue string: String) -> Int
  optional func comboBoxCell(_ aComboBoxCell: NSComboBoxCell, completedString uncompletedString: String) -> String?
}


class NSStepper : NSControl, NSAccessibilityStepper {
  var minValue: Double
  var maxValue: Double
  var increment: Double
  var valueWraps: Bool
  var autorepeat: Bool
  init(frame frameRect: NSRect)
  init?(coder coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityValue() -> AnyObject?
}

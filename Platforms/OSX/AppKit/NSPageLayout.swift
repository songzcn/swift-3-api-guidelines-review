
class NSPageLayout : NSObject {
  @available(OSX 10.5, *)
  func addAccessoryController(_ accessoryController: NSViewController)
  @available(OSX 10.5, *)
  func removeAccessoryController(_ accessoryController: NSViewController)
  @available(OSX 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  func beginSheet(_ printInfo: NSPrintInfo, modalFor docWindow: NSWindow, delegate delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func runModal(_ printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  var printInfo: NSPrintInfo? { get }
  init()
}
extension NSPageLayout {
}
extension NSApplication {
  func runPageLayout(_ sender: AnyObject?)
}

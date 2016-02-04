
@available(iOS 8.0, *)
class HMAccessoryBrowser : NSObject {
  weak var delegate: @sil_weak HMAccessoryBrowserDelegate?
  var discoveredAccessories: [HMAccessory] { get }
  func startSearchingForNewAccessories()
  func stopSearchingForNewAccessories()
  init()
}
@available(iOS 8.0, *)
protocol HMAccessoryBrowserDelegate : NSObjectProtocol {
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didFindNewAccessory accessory: HMAccessory)
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didRemoveNewAccessory accessory: HMAccessory)
}

@available(watchOS 20000, *)
class HMCharacteristic : NSObject {
  var characteristicType: String { get }
  @available(watchOS 2.0, *)
  var localizedDescription: String { get }
  weak var service: @sil_weak HMService? { get }
  var properties: [String] { get }
  var metadata: HMCharacteristicMetadata? { get }
  @NSCopying var value: AnyObject? { get }
  var notificationEnabled: Bool { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func writeValue(value: AnyObject?, completionHandler completion: (NSError?) -> Void)
  func readValueWithCompletionHandler(completion: (NSError?) -> Void)
  func enableNotification(enable: Bool, completionHandler completion: (NSError?) -> Void)
  init()
}
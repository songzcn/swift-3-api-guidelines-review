
@available(iOS 8.0, *)
class HMActionSet : NSObject {
  var name: String { get }
  var actions: Set<HMAction> { get }
  var executing: Bool { get }
  @available(iOS 9.0, *)
  var actionSetType: String { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addAction(action: HMAction, completionHandler completion: (NSError?) -> Void)
  func removeAction(action: HMAction, completionHandler completion: (NSError?) -> Void)
}
@available(iOS 9.0, *)
let HMActionSetTypeWakeUp: String
@available(iOS 9.0, *)
let HMActionSetTypeSleep: String
@available(iOS 9.0, *)
let HMActionSetTypeHomeDeparture: String
@available(iOS 9.0, *)
let HMActionSetTypeHomeArrival: String
@available(iOS 9.0, *)
let HMActionSetTypeUserDefined: String

@available(OSX 10.10, *)
enum LAPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.11, *)
  case DeviceOwnerAuthentication
}
@available(OSX 10.10, *)
class LAContext : NSObject {
  func canEvaluatePolicy(policy: LAPolicy, error: NSErrorPointer) -> Bool
  func evaluatePolicy(policy: LAPolicy, localizedReason: String, reply: (Bool, NSError?) -> Void)
  @available(OSX 10.11, *)
  func invalidate()
  @available(OSX 10.11, *)
  func setCredential(credential: NSData?, type: LACredentialType) -> Bool
  @available(OSX 10.11, *)
  func isCredentialSet(type: LACredentialType) -> Bool
  @available(OSX 10.11, *)
  func evaluateAccessControl(accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String, reply: (Bool, NSError?) -> Void)
  var localizedFallbackTitle: String?
  @available(OSX 10.11, *)
  var evaluatedPolicyDomainState: NSData? { get }
  init()
}
@available(OSX 10.11, *)
enum LACredentialType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ApplicationPassword
}
@available(OSX 10.11, *)
enum LAAccessControlOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CreateItem
  case UseItem
  case CreateKey
  case UseKeySign
}
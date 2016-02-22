
@available(iOS 9.0, *)
let WCErrorDomain: String
@available(iOS 9.0, *)
enum WCErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case genericError
  case sessionNotSupported
  case sessionMissingDelegate
  case sessionNotActivated
  case deviceNotPaired
  case watchAppNotInstalled
  case notReachable
  case invalidParameter
  case payloadTooLarge
  case payloadUnsupportedTypes
  case messageReplyFailed
  case messageReplyTimedOut
  case fileAccessDenied
  case deliveryFailed
  case insufficientSpace
}

@available(iOS 9.0, *)
extension WCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

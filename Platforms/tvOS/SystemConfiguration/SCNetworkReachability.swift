
class SCNetworkReachability {
}
@available(*, deprecated, renamed="SCNetworkReachability")
typealias SCNetworkReachabilityRef = SCNetworkReachability
struct SCNetworkReachabilityContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
struct SCNetworkReachabilityFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TransientConnection: SCNetworkReachabilityFlags { get }
  static var Reachable: SCNetworkReachabilityFlags { get }
  static var ConnectionRequired: SCNetworkReachabilityFlags { get }
  static var ConnectionOnTraffic: SCNetworkReachabilityFlags { get }
  static var InterventionRequired: SCNetworkReachabilityFlags { get }
  static var ConnectionOnDemand: SCNetworkReachabilityFlags { get }
  static var IsLocalAddress: SCNetworkReachabilityFlags { get }
  static var IsDirect: SCNetworkReachabilityFlags { get }
  static var IsWWAN: SCNetworkReachabilityFlags { get }
  static var ConnectionAutomatic: SCNetworkReachabilityFlags { get }
}
typealias SCNetworkReachabilityCallBack = @convention(c) (SCNetworkReachability, SCNetworkReachabilityFlags, UnsafeMutablePointer<Void>) -> Void
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddress(allocator: CFAllocator?, _ address: UnsafePointer<sockaddr>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddressPair(allocator: CFAllocator?, _ localAddress: UnsafePointer<sockaddr>, _ remoteAddress: UnsafePointer<sockaddr>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithName(allocator: CFAllocator?, _ nodename: UnsafePointer<Int8>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetFlags(target: SCNetworkReachability, _ flags: UnsafeMutablePointer<SCNetworkReachabilityFlags>) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilitySetCallback(target: SCNetworkReachability, _ callout: SCNetworkReachabilityCallBack?, _ context: UnsafeMutablePointer<SCNetworkReachabilityContext>) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilityScheduleWithRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilityUnscheduleFromRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(tvOS 4.0, *)
func SCNetworkReachabilitySetDispatchQueue(target: SCNetworkReachability, _ queue: dispatch_queue_t?) -> Bool
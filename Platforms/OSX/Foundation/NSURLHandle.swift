
enum NSURLHandleStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotLoaded
  case LoadSucceeded
  case LoadInProgress
  case LoadFailed
}
protocol NSURLHandleClient {
}
class NSURLHandle : NSObject {
  init()
}
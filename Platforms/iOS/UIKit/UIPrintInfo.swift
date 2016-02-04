
enum UIPrintInfoOutputType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case General
  case Photo
  case Grayscale
  @available(iOS 7.0, *)
  case PhotoGrayscale
}
enum UIPrintInfoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case Landscape
}
enum UIPrintInfoDuplex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case LongEdge
  case ShortEdge
}
@available(iOS 4.2, *)
class UIPrintInfo : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  class func printInfo() -> UIPrintInfo
  /*not inherited*/ init(dictionary: [NSObject : AnyObject]?)
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  var printerID: String?
  var jobName: String
  var outputType: UIPrintInfoOutputType
  var orientation: UIPrintInfoOrientation
  var duplex: UIPrintInfoDuplex
  convenience init()
  @available(iOS 4.2, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 4.2, *)
  func encodeWithCoder(aCoder: NSCoder)
}
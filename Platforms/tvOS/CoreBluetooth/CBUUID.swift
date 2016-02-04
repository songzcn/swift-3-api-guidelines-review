
let CBUUIDCharacteristicExtendedPropertiesString: String
let CBUUIDCharacteristicUserDescriptionString: String
let CBUUIDClientCharacteristicConfigurationString: String
let CBUUIDServerCharacteristicConfigurationString: String
let CBUUIDCharacteristicFormatString: String
let CBUUIDCharacteristicAggregateFormatString: String
@available(tvOS 5.0, *)
class CBUUID : NSObject, NSCopying {
  var data: NSData { get }
  @available(tvOS 7.1, *)
  var UUIDString: String { get }
  /*not inherited*/ init(string theString: String)
  /*not inherited*/ init(data theData: NSData)
  @available(tvOS, introduced=5.0, deprecated=9.0)
  /*not inherited*/ init(CFUUID theUUID: CFUUID)
  @available(tvOS 7.0, *)
  /*not inherited*/ init(NSUUID theUUID: NSUUID)
  init()
  @available(tvOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

@available(watchOS 2.0, *)
class NSIncrementalStoreNode : NSObject {
  init(objectID objectID: NSManagedObjectID, withValues values: [String : AnyObject], version version: UInt64)
  func update(values values: [String : AnyObject], version version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func value(for prop: NSPropertyDescription) -> AnyObject?
  init()
}

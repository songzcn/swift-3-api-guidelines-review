
@available(tvOS 5.0, *)
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: NSTimeInterval
  var searchScopes: [AnyObject]
  @available(tvOS 7.0, *)
  var searchItems: [AnyObject]?
  @available(tvOS 7.0, *)
  var operationQueue: NSOperationQueue?
  func startQuery() -> Bool
  func stopQuery()
  var started: Bool { get }
  var gathering: Bool { get }
  var stopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  @available(tvOS 7.0, *)
  func enumerateResultsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 7.0, *)
  func enumerateResultsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [AnyObject] { get }
  func indexOfResult(result: AnyObject) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func valueOfAttribute(attrName: String, forResultAtIndex idx: Int) -> AnyObject?
  init()
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  @available(tvOS 5.0, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> AnyObject
  @available(tvOS 5.0, *)
  optional func metadataQuery(query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: AnyObject) -> AnyObject
}
@available(tvOS 5.0, *)
let NSMetadataQueryDidStartGatheringNotification: String
@available(tvOS 5.0, *)
let NSMetadataQueryGatheringProgressNotification: String
@available(tvOS 5.0, *)
let NSMetadataQueryDidFinishGatheringNotification: String
@available(tvOS 5.0, *)
let NSMetadataQueryDidUpdateNotification: String
@available(tvOS 8.0, *)
let NSMetadataQueryUpdateAddedItemsKey: String
@available(tvOS 8.0, *)
let NSMetadataQueryUpdateChangedItemsKey: String
@available(tvOS 8.0, *)
let NSMetadataQueryUpdateRemovedItemsKey: String
@available(tvOS 5.0, *)
let NSMetadataQueryResultContentRelevanceAttribute: String
@available(tvOS 5.0, *)
let NSMetadataQueryUbiquitousDocumentsScope: String
@available(tvOS 5.0, *)
let NSMetadataQueryUbiquitousDataScope: String
@available(tvOS 8.0, *)
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(tvOS 5.0, *)
class NSMetadataItem : NSObject {
  func valueForAttribute(key: String) -> AnyObject?
  func valuesForAttributes(keys: [String]) -> [String : AnyObject]?
  var attributes: [String] { get }
  convenience init()
}
@available(tvOS 5.0, *)
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: AnyObject? { get }
  var count: Int { get }
  init()
}
@available(tvOS 5.0, *)
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: AnyObject { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func resultAtIndex(idx: Int) -> AnyObject
  var results: [AnyObject] { get }
  init()
}
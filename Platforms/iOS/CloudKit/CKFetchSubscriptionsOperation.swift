
@available(iOS 8.0, *)
class CKFetchSubscriptionsOperation : CKDatabaseOperation {
  init()
  class func fetchAll() -> Self
  convenience init(subscriptionIDs subscriptionIDs: [String])
  var subscriptionIDs: [String]?
  var fetchSubscriptionCompletionBlock: (([String : CKSubscription]?, NSError?) -> Void)?
}

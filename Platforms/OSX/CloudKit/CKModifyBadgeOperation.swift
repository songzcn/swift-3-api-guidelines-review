
@available(OSX 10.10, *)
class CKModifyBadgeOperation : CKOperation {
  init()
  convenience init(badgeValue badgeValue: Int)
  var badgeValue: Int
  var modifyBadgeCompletionBlock: ((NSError?) -> Void)?
}


enum NSCompoundPredicateType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case notPredicateType
  case andPredicateType
  case orPredicateType
}
@available(OSX 10.4, *)
class NSCompoundPredicate : NSPredicate {
  init(type type: NSCompoundPredicateType, subpredicates subpredicates: [NSPredicate])
  init?(coder coder: NSCoder)
  var compoundPredicateType: NSCompoundPredicateType { get }
  var subpredicates: [AnyObject] { get }
  /*not inherited*/ init(andPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(orPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(notPredicateWithSubpredicate predicate: NSPredicate)
  convenience init()
}

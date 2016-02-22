
class ABPerson : ABRecord {
  func parentGroups() -> [AnyObject]!
  @available(OSX 10.8, *)
  func linkedPeople() -> [AnyObject]!
  init!()
  @available(OSX 10.5, *)
  init!(addressBook addressBook: ABAddressBook!)
}
extension ABPerson {
  class func addPropertiesAndTypes(_ properties: [NSObject : AnyObject]!) -> Int
  class func removeProperties(_ properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOf(property property: String!) -> ABPropertyType
}
extension ABPerson {
  class func searchElement(forProperty property: String!, label label: String!, key key: String!, value value: AnyObject!, comparison comparison: ABSearchComparison) -> ABSearchElement!
}
extension ABPerson {
  init!(vCardRepresentation vCardData: NSData!)
  func vCardRepresentation() -> NSData!
}

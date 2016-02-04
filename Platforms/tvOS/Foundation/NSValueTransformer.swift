
@available(tvOS 3.0, *)
let NSNegateBooleanTransformerName: String
@available(tvOS 3.0, *)
let NSIsNilTransformerName: String
@available(tvOS 3.0, *)
let NSIsNotNilTransformerName: String
@available(tvOS 3.0, *)
let NSUnarchiveFromDataTransformerName: String
@available(tvOS 3.0, *)
let NSKeyedUnarchiveFromDataTransformerName: String
@available(tvOS 3.0, *)
class NSValueTransformer : NSObject {
  class func setValueTransformer(transformer: NSValueTransformer?, forName name: String)
  /*not inherited*/ init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(value: AnyObject?) -> AnyObject?
  init()
}
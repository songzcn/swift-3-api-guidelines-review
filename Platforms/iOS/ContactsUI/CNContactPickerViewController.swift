
@available(iOS 9.0, *)
class CNContactPickerViewController : UIViewController {
  var displayedPropertyKeys: [String]?
  weak var delegate: @sil_weak CNContactPickerDelegate?
  @NSCopying var predicateForEnablingContact: NSPredicate?
  @NSCopying var predicateForSelectionOfContact: NSPredicate?
  @NSCopying var predicateForSelectionOfProperty: NSPredicate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
protocol CNContactPickerDelegate : NSObjectProtocol {
  optional func contactPickerDidCancel(_ picker: CNContactPickerViewController)
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact)
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelect contactProperty: CNContactProperty)
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact])
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelectContactProperties contactProperties: [CNContactProperty])
}

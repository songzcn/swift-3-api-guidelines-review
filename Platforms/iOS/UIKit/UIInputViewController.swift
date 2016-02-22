
protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  func adjustTextPosition(byCharacterOffset offset: Int)
}
@available(iOS 8.0, *)
class UIInputViewController : UIViewController, UITextInputDelegate {
  var inputView: UIInputView?
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  func dismissKeyboard()
  func advanceToNextInputMode()
  func requestSupplementaryLexicon(completion completionHandler: (UILexicon) -> Void)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 8.0, *)
  func selectionWillChange(_ textInput: UITextInput?)
  @available(iOS 8.0, *)
  func selectionDidChange(_ textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textWillChange(_ textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textDidChange(_ textInput: UITextInput?)
}

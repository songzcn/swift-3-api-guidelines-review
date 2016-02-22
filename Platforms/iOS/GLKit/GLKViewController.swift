
@available(iOS 5.0, *)
class GLKViewController : UIViewController, NSCoding, GLKViewDelegate {
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged GLKViewControllerDelegate?
  var preferredFramesPerSecond: Int
  var framesPerSecond: Int { get }
  var isPaused: Bool
  var framesDisplayed: Int { get }
  var timeSinceFirstResume: NSTimeInterval { get }
  var timeSinceLastResume: NSTimeInterval { get }
  var timeSinceLastUpdate: NSTimeInterval { get }
  var timeSinceLastDraw: NSTimeInterval { get }
  var pauseOnWillResignActive: Bool
  var resumeOnDidBecomeActive: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 5.0, *)
  func glkView(_ view: GLKView, drawIn rect: CGRect)
}
protocol GLKViewControllerDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  func glkViewControllerUpdate(_ controller: GLKViewController)
  @available(iOS 5.0, *)
  optional func glkViewController(_ controller: GLKViewController, willPause pause: Bool)
}

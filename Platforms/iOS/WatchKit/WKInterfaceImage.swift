
protocol WKImageAnimatable : NSObjectProtocol {
  func startAnimating()
  func startAnimatingWithImages(in imageRange: NSRange, duration duration: NSTimeInterval, repeatCount repeatCount: Int)
  func stopAnimating()
}
@available(iOS 8.2, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(_ image: UIImage?)
  func setImageData(_ imageData: NSData?)
  func setImageNamed(_ imageName: String?)
  func setTintColor(_ tintColor: UIColor?)
  @available(iOS 8.2, *)
  func startAnimating()
  @available(iOS 8.2, *)
  func startAnimatingWithImages(in imageRange: NSRange, duration duration: NSTimeInterval, repeatCount repeatCount: Int)
  @available(iOS 8.2, *)
  func stopAnimating()
}

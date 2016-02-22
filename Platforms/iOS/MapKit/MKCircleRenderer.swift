
@available(iOS 7.0, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle circle: MKCircle)
  var circle: MKCircle { get }
  init(overlay overlay: MKOverlay)
  convenience init()
}

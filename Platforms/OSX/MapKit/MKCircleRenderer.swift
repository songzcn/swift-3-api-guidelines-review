
@available(OSX 10.9, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle circle: MKCircle)
  var circle: MKCircle { get }
  init(overlay overlay: MKOverlay)
  convenience init()
}

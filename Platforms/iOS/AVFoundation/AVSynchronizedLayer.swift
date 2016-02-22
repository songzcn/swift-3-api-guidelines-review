
@available(iOS 4.0, *)
class AVSynchronizedLayer : CALayer {
  /*not inherited*/ init(playerItem playerItem: AVPlayerItem)
  var playerItem: AVPlayerItem?
  init()
  init(layer layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}

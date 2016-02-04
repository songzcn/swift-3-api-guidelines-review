
@available(iOS 8.0, *)
class SKLightNode : SKNode {
  var enabled: Bool
  var lightColor: UIColor
  var ambientColor: UIColor
  var shadowColor: UIColor
  var falloff: CGFloat
  var categoryBitMask: UInt32
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
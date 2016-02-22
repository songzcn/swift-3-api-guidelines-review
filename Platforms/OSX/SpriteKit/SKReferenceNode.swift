
@available(OSX 10.11, *)
class SKReferenceNode : SKNode {
  init(url url: NSURL?)
  init(fileNamed fileName: String?)
  init?(coder aDecoder: NSCoder)
  convenience init(fileNamed fileName: String)
  convenience init(url referenceURL: NSURL)
  func didLoad(_ node: SKNode?)
  func resolve()
  convenience init()
}


protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(OSX 10.10, *)
  func beginRequest(_ context: NSExtensionContext)
}

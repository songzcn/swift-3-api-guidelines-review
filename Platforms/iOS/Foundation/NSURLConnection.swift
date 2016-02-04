
class NSURLConnection : NSObject {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?, startImmediately: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?)
  @available(iOS 5.0, *)
  @NSCopying var originalRequest: NSURLRequest { get }
  @available(iOS 5.0, *)
  @NSCopying var currentRequest: NSURLRequest { get }
  @available(iOS 2.0, *)
  func start()
  func cancel()
  @available(iOS 2.0, *)
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(iOS 2.0, *)
  func unscheduleFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(iOS 5.0, *)
  func setDelegateQueue(queue: NSOperationQueue?)
  class func canHandleRequest(request: NSURLRequest) -> Bool
  init()
}
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(connection: NSURLConnection, didFailWithError error: NSError)
  optional func connectionShouldUseCredentialStorage(connection: NSURLConnection) -> Bool
  optional func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
}
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, willSendRequest request: NSURLRequest, redirectResponse response: NSURLResponse?) -> NSURLRequest?
  optional func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse)
  optional func connection(connection: NSURLConnection, didReceiveData data: NSData)
  optional func connection(connection: NSURLConnection, needNewBodyStream request: NSURLRequest) -> NSInputStream?
  optional func connection(connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(connection: NSURLConnection, willCacheResponse cachedResponse: NSCachedURLResponse) -> NSCachedURLResponse?
  optional func connectionDidFinishLoading(connection: NSURLConnection)
}
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(connection: NSURLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(connection: NSURLConnection, destinationURL: NSURL)
}
extension NSURLConnection {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(request: NSURLRequest, returningResponse response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>) throws -> NSData
}
extension NSURLConnection {
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(request: NSURLRequest, queue: NSOperationQueue, completionHandler handler: (NSURLResponse?, NSData?, NSError?) -> Void)
}
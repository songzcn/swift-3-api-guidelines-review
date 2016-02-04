
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(iOS 3.0, *)
  func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse)
}
@available(iOS 3.0, *)
class SKProductsRequest : SKRequest {
  @available(iOS 3.0, *)
  init(productIdentifiers: Set<String>)
  @available(iOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
@available(iOS 3.0, *)
class SKProductsResponse : NSObject {
  @available(iOS 3.0, *)
  var products: [SKProduct] { get }
  @available(iOS 3.0, *)
  var invalidProductIdentifiers: [String] { get }
  init()
}
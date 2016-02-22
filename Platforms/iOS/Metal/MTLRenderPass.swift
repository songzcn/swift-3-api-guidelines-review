
@available(iOS 8.0, *)
enum MTLLoadAction : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case dontCare
  case load
  case clear
}
@available(iOS 8.0, *)
enum MTLStoreAction : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case dontCare
  case store
  case multisampleResolve
}
struct MTLClearColor {
  var red: Double
  var green: Double
  var blue: Double
  var alpha: Double
  init()
  init(red red: Double, green green: Double, blue blue: Double, alpha alpha: Double)
}
@available(iOS 8.0, *)
class MTLRenderPassAttachmentDescriptor : NSObject, NSCopying {
  var texture: MTLTexture?
  var level: Int
  var slice: Int
  var depthPlane: Int
  var resolveTexture: MTLTexture?
  var resolveLevel: Int
  var resolveSlice: Int
  var resolveDepthPlane: Int
  var loadAction: MTLLoadAction
  var storeAction: MTLStoreAction
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearColor: MTLClearColor
  init()
}
@available(iOS 9.0, *)
enum MTLMultisampleDepthResolveFilter : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case sample0
  case min
  case max
}
@available(iOS 8.0, *)
class MTLRenderPassDepthAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearDepth: Double
  @available(iOS 9.0, *)
  var depthResolveFilter: MTLMultisampleDepthResolveFilter
  init()
}
@available(iOS 8.0, *)
class MTLRenderPassStencilAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearStencil: UInt32
  init()
}
@available(iOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptorArray : NSObject {
  subscript(_ attachmentIndex: Int) -> MTLRenderPassColorAttachmentDescriptor!
  init()
}
@available(iOS 8.0, *)
class MTLRenderPassDescriptor : NSObject, NSCopying {
  var colorAttachments: MTLRenderPassColorAttachmentDescriptorArray { get }
  @NSCopying var depthAttachment: MTLRenderPassDepthAttachmentDescriptor!
  @NSCopying var stencilAttachment: MTLRenderPassStencilAttachmentDescriptor!
  var visibilityResultBuffer: MTLBuffer?
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
func MTLClearColorMake(_ red: Double, _ green: Double, _ blue: Double, _ alpha: Double) -> MTLClearColor

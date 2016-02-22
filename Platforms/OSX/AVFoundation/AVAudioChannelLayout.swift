
@available(OSX 10.10, *)
class AVAudioChannelLayout : NSObject, NSSecureCoding {
  convenience init(layoutTag layoutTag: AudioChannelLayoutTag)
  init(layout layout: UnsafePointer<AudioChannelLayout>)
  func isEqual(_ object: AnyObject) -> Bool
  var layoutTag: AudioChannelLayoutTag { get }
  var layout: UnsafePointer<AudioChannelLayout> { get }
  var channelCount: AVAudioChannelCount { get }
  convenience init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

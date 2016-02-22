
@available(iOS 4.0, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMix : AVAudioMix {
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
@available(iOS 4.0, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(iOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRamp(for time: CMTime, startVolume startVolume: UnsafeMutablePointer<Float>, endVolume endVolume: UnsafeMutablePointer<Float>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track track: AVAssetTrack?)
  var trackID: CMPersistentTrackID
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String?
  @available(iOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap?
  func setVolumeRampFromStartVolume(_ startVolume: Float, toEndVolume endVolume: Float, timeRange timeRange: CMTimeRange)
  func setVolume(_ volume: Float, at time: CMTime)
  init()
}

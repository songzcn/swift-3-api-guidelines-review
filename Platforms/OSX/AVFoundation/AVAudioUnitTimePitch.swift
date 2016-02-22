
@available(OSX 10.10, *)
class AVAudioUnitTimePitch : AVAudioUnitTimeEffect {
  var rate: Float
  var pitch: Float
  var overlap: Float
  init(audioComponentDescription audioComponentDescription: AudioComponentDescription)
  init()
}

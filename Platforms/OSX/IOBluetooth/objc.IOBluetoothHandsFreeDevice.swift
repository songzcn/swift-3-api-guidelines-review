
@available(OSX 10.7, *)
class IOBluetoothHandsFreeDevice : IOBluetoothHandsFree {
  @available(OSX 10.7, *)
  init!(device device: IOBluetoothDevice!, delegate delegate: AnyObject!)
  @available(OSX 10.7, *)
  func dialNumber(_ aNumber: String!)
  @available(OSX 10.7, *)
  func memoryDial(_ memoryLocation: Int32)
  @available(OSX 10.7, *)
  func redial()
  @available(OSX 10.7, *)
  func endCall()
  @available(OSX 10.7, *)
  func acceptCall()
  @available(OSX 10.7, *)
  func acceptCallOnPhone()
  @available(OSX 10.7, *)
  func sendDTMF(_ character: String!)
  @available(OSX 10.7, *)
  func subscriberNumber()
  @available(OSX 10.7, *)
  func currentCallList()
  @available(OSX 10.7, *)
  func releaseHeldCalls()
  @available(OSX 10.7, *)
  func releaseActiveCalls()
  @available(OSX 10.7, *)
  func releaseCall(_ index: Int32)
  @available(OSX 10.7, *)
  func holdCall()
  @available(OSX 10.7, *)
  func placeAllOthers(onHold index: Int32)
  @available(OSX 10.7, *)
  func addHeldCall()
  @available(OSX 10.7, *)
  func callTransfer()
  @available(OSX 10.7, *)
  func transferAudioToComputer()
  @available(OSX 10.7, *)
  func transferAudioToPhone()
  @available(OSX 10.7, *)
  func sendSMS(_ aNumber: String!, message aMessage: String!)
  @available(OSX 10.7, *)
  func send(atCommand atCommand: String!)
  @available(OSX 10.7, *)
  func send(atCommand atCommand: String!, timeout timeout: Float, selector selector: Selector, target target: AnyObject!)
  init()
}
protocol IOBluetoothHandsFreeDeviceDelegate : IOBluetoothHandsFreeDelegate {
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, isServiceAvailable isServiceAvailable: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, isCallActive isCallActive: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, callSetupMode callSetupMode: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, callHoldState callHoldState: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, signalStrength signalStrength: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, isRoaming isRoaming: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, batteryCharge batteryCharge: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, incomingCallFrom number: String!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, ringAttempt ringAttempt: NSNumber!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, currentCall currentCall: [NSObject : AnyObject]!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, subscriberNumber subscriberNumber: String!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, incomingSMS sms: [NSObject : AnyObject]!)
  @available(OSX 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeDevice!, unhandledResultCode resultCode: String!)
}

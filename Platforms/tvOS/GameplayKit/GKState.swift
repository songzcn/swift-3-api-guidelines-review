
@available(tvOS 9.0, *)
class GKState : NSObject {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  init()
  func isValidNextState(_ stateClass: AnyClass) -> Bool
  func didEnter(withPreviousState previousState: GKState?)
  func update(deltaTime seconds: NSTimeInterval)
  func willExit(withNextState nextState: GKState)
}


@available(iOS 3.0, *)
let NSMigrationManagerKey: String
@available(iOS 3.0, *)
let NSMigrationSourceObjectKey: String
@available(iOS 3.0, *)
let NSMigrationDestinationObjectKey: String
@available(iOS 3.0, *)
let NSMigrationEntityMappingKey: String
@available(iOS 3.0, *)
let NSMigrationPropertyMappingKey: String
@available(iOS 3.0, *)
let NSMigrationEntityPolicyKey: String
@available(iOS 3.0, *)
class NSEntityMigrationPolicy : NSObject {
  func begin(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createDestinationInstances(forSourceInstance sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endInstanceCreation(for mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func createRelationships(forDestinationInstance dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func endRelationshipCreation(for mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func performCustomValidation(for mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
  func end(_ mapping: NSEntityMapping, manager manager: NSMigrationManager) throws
}

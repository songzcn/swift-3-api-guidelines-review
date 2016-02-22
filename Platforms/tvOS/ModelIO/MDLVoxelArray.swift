
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent minimumExtent: MDLVoxelIndex, maximumExtent maximumExtent: MDLVoxelIndex)
}
@available(tvOS 9.0, *)
class MDLVoxelArray : NSObject {
  init(asset asset: MDLAsset, divisions divisions: Int32, interiorShells interiorShells: Int32, exteriorShells exteriorShells: Int32, patchRadius patchRadius: Float)
  init(asset asset: MDLAsset, divisions divisions: Int32, interiorNBWidth interiorNBWidth: Float, exteriorNBWidth exteriorNBWidth: Float, patchRadius patchRadius: Float)
  init(data voxelData: NSData, boundingBox boundingBox: MDLAxisAlignedBoundingBox, voxelExtent voxelExtent: Float)
  func mesh(using allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func voxelExists(atIndex index: MDLVoxelIndex, allowAnyX allowAnyX: Bool, allowAnyY allowAnyY: Bool, allowAnyZ allowAnyZ: Bool, allowAnyShell allowAnyShell: Bool) -> Bool
  func setVoxelAtIndex(_ index: MDLVoxelIndex)
  func setVoxelsFor(_ mesh: MDLMesh, divisions divisions: Int32, interiorShells interiorShells: Int32, exteriorShells exteriorShells: Int32, patchRadius patchRadius: Float)
  func setVoxelsFor(_ mesh: MDLMesh, divisions divisions: Int32, interiorNBWidth interiorNBWidth: Float, exteriorNBWidth exteriorNBWidth: Float, patchRadius patchRadius: Float)
  func voxels(within extent: MDLVoxelIndexExtent) -> NSData?
  func voxelIndices() -> NSData?
  func union(_ voxels: MDLVoxelArray)
  func difference(with voxels: MDLVoxelArray)
  func intersect(_ voxels: MDLVoxelArray)
  func indexOf(spatialLocation location: vector_float3) -> MDLVoxelIndex
  func spatialLocationOf(index index: MDLVoxelIndex) -> vector_float3
  func voxelBoundingBox(atIndex index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox
  var count: Int { get }
  var voxelIndexExtent: MDLVoxelIndexExtent { get }
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  init()
}

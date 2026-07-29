import canonicalLaneMathlib.AdmissibleClass

/-!
# Low Dimensional Manifold Package
-/

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure LowDimAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  dimensionTwo : Prop
  dimensionThree : Prop
  dimensionFour : Prop
  lowDimManifold : Prop
  specificDimensionTheorem : Prop
  conclusion : specificDimensionTheorem

def LowDimWitnessClosed (O : LowDimAdmittedObject) : Prop :=
  O.specificDimensionTheorem

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
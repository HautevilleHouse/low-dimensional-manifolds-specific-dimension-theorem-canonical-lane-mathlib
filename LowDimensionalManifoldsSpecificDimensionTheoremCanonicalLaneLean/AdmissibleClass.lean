import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure AdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  specificDimension : Nat
  dimensionTwoOrThree : specificDimension = 2 ∨ specificDimension = 3
  classificationConfirmed : Prop
  conclusion : classificationConfirmed

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.dimensionTwoOrThree) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse

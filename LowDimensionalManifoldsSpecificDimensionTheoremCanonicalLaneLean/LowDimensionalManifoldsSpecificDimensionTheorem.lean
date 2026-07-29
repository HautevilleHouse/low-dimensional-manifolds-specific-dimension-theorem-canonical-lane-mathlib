import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure LowDimensionalManifoldSpecificDimensionTheoremPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  specificDimension : Nat
  dimensionEquals : specificDimension = 2 ∨ specificDimension = 3
  compactWithoutBoundary : Prop
  classificationComplete : Prop

structure LowDimensionalManifoldSpecificDimensionTheoremEvidence
    (P : LowDimensionalManifoldSpecificDimensionTheoremPackage) where
  specificDimensionClosed : P.specificDimension = 2 ∨ P.specificDimension = 3
  compactWithoutBoundaryClosed : P.compactWithoutBoundary
  classificationCompleteClosed : P.classificationComplete

def LowDimensionalManifoldSpecificDimensionTheoremClosed
    (P : LowDimensionalManifoldSpecificDimensionTheoremPackage) : Prop :=
  (P.specificDimension = 2 ∨ P.specificDimension = 3) ∧
  P.compactWithoutBoundary ∧
  P.classificationComplete

theorem low_dimensional_manifold_specific_dimension_theorem_closed_from_evidence
    (P : LowDimensionalManifoldSpecificDimensionTheoremPackage)
    (E : LowDimensionalManifoldSpecificDimensionTheoremEvidence P) :
    LowDimensionalManifoldSpecificDimensionTheoremClosed P := by
  exact And.intro E.specificDimensionClosed
    (And.intro E.compactWithoutBoundaryClosed E.classificationCompleteClosed)

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse

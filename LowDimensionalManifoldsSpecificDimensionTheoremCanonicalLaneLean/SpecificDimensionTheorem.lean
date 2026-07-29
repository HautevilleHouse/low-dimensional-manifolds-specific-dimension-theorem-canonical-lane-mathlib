import canonicalLaneMathlib.AdmissibleClass

/-!
# Specific Dimension Theorem Package
-/

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure SpecificDimensionTheoremPackage where
  dimensionTwoProof : Prop
  dimensionThreeProof : Prop
  dimensionFourProof : Prop
  classificationUsed : ClassificationClosed
  geometricStructuresUsed : GeometricStructuresClosed
  dimensionTwoProofClosed : dimensionTwoProof
  dimensionThreeProofClosed : dimensionThreeProof
  dimensionFourProofClosed : dimensionFourProof

def SpecificDimensionTheoremClosed
    (S : SpecificDimensionTheoremPackage) : Prop :=
  S.dimensionTwoProof ∧ S.dimensionThreeProof ∧ S.dimensionFourProof ∧
  S.classificationUsed ∧ S.geometricStructuresUsed

theorem specific_dimension_theorem_closed_from_evidence
    (S : SpecificDimensionTheoremPackage)
    (E : S.dimensionTwoProofClosed) (E2 : S.dimensionThreeProofClosed)
    (E3 : S.dimensionFourProofClosed) :
    SpecificDimensionTheoremClosed S := by
  exact And.intro E (And.intro E2 (And.intro E3 (And.intro S.classificationUsed S.geometricStructuresUsed)))

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
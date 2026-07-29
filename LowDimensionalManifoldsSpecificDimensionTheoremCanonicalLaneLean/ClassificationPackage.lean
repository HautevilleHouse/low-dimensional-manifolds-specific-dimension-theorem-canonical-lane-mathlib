import canonicalLaneMathlib.AdmissibleClass

/-!
# Classification Package for low dimensional manifolds
-/

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure ClassificationPackage where
  dimensionTwoClassification : Prop
  dimensionThreeClassification : Prop
  dimensionFourClassification : Prop
  geometricStructures : Prop
  classificationComplete : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  dimensionTwoClosed : C.dimensionTwoClassification
  dimensionThreeClosed : C.dimensionThreeClassification
  dimensionFourClosed : C.dimensionFourClassification
  geometricStructuresClosed : C.geometricStructures
  classificationCompleteClosed : C.classificationComplete

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.dimensionTwoClassification ∧ C.dimensionThreeClassification ∧
  C.dimensionFourClassification ∧ C.geometricStructures ∧
  C.classificationComplete

theorem classification_closed_from_evidence (C : ClassificationPackage)
    (E : ClassificationEvidence C) : ClassificationClosed C := by
  exact And.intro E.dimensionTwoClosed
    (And.intro E.dimensionThreeClosed
      (And.intro E.dimensionFourClosed
        (And.intro E.geometricStructuresClosed
          E.classificationCompleteClosed)))

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
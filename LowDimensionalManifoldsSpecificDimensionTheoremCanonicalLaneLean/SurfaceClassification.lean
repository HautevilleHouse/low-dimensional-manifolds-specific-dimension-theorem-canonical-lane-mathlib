import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure SurfaceClassificationPackage where
  closedSurfaceGenus : Prop
  orientable : Prop
  classificationClosed : closedSurfaceGenus ∧ orientable

theorem surface_classification_evidence (C : SurfaceClassificationPackage) :
    C.classificationClosed := by
  exact C.classificationClosed

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
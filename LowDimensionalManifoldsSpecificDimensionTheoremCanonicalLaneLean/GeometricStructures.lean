import canonicalLaneMathlib.AdmissibleClass

/-!
# Geometric Structures Package
-/

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure GeometricStructuresPackage where
  riemannianMetric : Prop
  constantCurvature : Prop
  hyperbolicStructure : Prop
  sphericalStructure : Prop
  solvGeometry : Prop

structure GeometricStructuresEvidence (G : GeometricStructuresPackage) where
  riemannianMetricClosed : G.riemannianMetric
  constantCurvatureClosed : G.constantCurvature
  hyperbolicStructureClosed : G.hyperbolicStructure
  sphericalStructureClosed : G.sphericalStructure
  solvGeometryClosed : G.solvGeometry

def GeometricStructuresClosed (G : GeometricStructuresPackage) : Prop :=
  G.riemannianMetric ∧ G.constantCurvature ∧
  G.hyperbolicStructure ∧ G.sphericalStructure ∧
  G.solvGeometry

theorem geometric_structures_closed_from_evidence
    (G : GeometricStructuresPackage) (E : GeometricStructuresEvidence G) :
    GeometricStructuresClosed G := by
  exact And.intro E.riemannianMetricClosed
    (And.intro E.constantCurvatureClosed
      (And.intro E.hyperbolicStructureClosed
        (And.intro E.sphericalStructureClosed
          E.solvGeometryClosed)))

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
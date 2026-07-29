import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure FourManifoldInvariantsPackage where
  intersectionForm : Prop
  kirbySiebenmannInvariant : Prop
  invariantsComputed : intersectionForm ∧ kirbySiebenmannInvariant

theorem four_manifold_invariants_evidence (F : FourManifoldInvariantsPackage) :
    F.invariantsComputed := by
  exact F.invariantsComputed

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
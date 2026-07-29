import LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def lowDimProjection : Projection LowDimManifoldEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem low_dim_projection_idempotent (x : LowDimManifoldEndgameState) :
    lowDimProjection.toFun (lowDimProjection.toFun x) = lowDimProjection.toFun x := by
  exact lowDimProjection.idempotent x

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
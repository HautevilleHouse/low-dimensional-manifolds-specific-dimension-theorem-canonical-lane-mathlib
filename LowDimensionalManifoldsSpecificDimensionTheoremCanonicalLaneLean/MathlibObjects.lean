import LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LowDimManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowDimManifoldAdmittedObject where
  space : LowDimManifoldSpace
  closedManifold : Prop
  specificDimension : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure LowDimManifoldEndgameState where
  object : LowDimManifoldAdmittedObject

def LowDimManifoldWitnessClosed (O : LowDimManifoldAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse
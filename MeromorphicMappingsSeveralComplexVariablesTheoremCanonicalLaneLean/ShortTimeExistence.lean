import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicFunctionPackage (M : ComplexManifoldPackage) where
  domain : Set M.Point
  holomorphicExceptPoles : Prop
  poleSetDiscrete : Prop
  orderOfPoles : Prop
  poleCountingData : Prop

structure MeromorphicFunctionEvidence {M : ComplexManifoldPackage} (F : MeromorphicFunctionPackage M) where
  holomorphicExceptPolesClosed : F.holomorphicExceptPoles
  poleSetDiscreteClosed : F.poleSetDiscrete

def MeromorphicFunctionClosed {M : ComplexManifoldPackage} (F : MeromorphicFunctionPackage M) : Prop :=
  F.holomorphicExceptPoles ∧ F.poleSetDiscrete

theorem meromorphic_function_closed_from_evidence {M : ComplexManifoldPackage} (F : MeromorphicFunctionPackage M) (E : MeromorphicFunctionEvidence F) :
    MeromorphicFunctionClosed F := by
  exact And.intro E.holomorphicExceptPolesClosed E.poleSetDiscreteClosed

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
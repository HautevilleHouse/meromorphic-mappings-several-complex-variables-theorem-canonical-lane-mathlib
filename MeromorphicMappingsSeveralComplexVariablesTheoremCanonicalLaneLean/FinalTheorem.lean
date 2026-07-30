import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

def ConstrainedMeromorphicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_meromorphic_endgame (A : AdmissibleClass) :
    ConstrainedMeromorphicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
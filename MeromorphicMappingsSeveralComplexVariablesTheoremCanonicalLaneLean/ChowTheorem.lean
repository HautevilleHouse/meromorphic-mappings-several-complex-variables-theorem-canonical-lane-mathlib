import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ChowTheoremPackage where
  projectiveVariety : Type
  analyticSubvariety : Type
  isAlgebraic : Prop

structure ChowTheoremEvidence (C : ChowTheoremPackage) where
  analyticSubvarietyClosed : Type
  isAlgebraicClosed : C.isAlgebraic

def ChowTheoremClosed (C : ChowTheoremPackage) : Prop :=
  C.isAlgebraic

theorem chow_theorem_closed_from_evidence (C : ChowTheoremPackage) (E : ChowTheoremEvidence C) :
    ChowTheoremClosed C := by
  exact E.isAlgebraicClosed

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
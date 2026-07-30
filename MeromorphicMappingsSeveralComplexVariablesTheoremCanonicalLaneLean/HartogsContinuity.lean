import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure HartogsContinuityPackage where
  domain : Type
  codomain : Type
  analyticFunction : Type
  separateAnalytic : Prop
  jointContinuity : Prop

structure HartogsContinuityEvidence (H : HartogsContinuityPackage) where
  separateAnalyticClosed : H.separateAnalytic
  jointContinuityClosed : H.jointContinuity

def HartogsContinuityClosed (H : HartogsContinuityPackage) : Prop :=
  H.separateAnalytic ∧ H.jointContinuity

theorem hartogs_continuity_closed_from_evidence (H : HartogsContinuityPackage)
    (E : HartogsContinuityEvidence H) : HartogsContinuityClosed H := by
  exact And.intro E.separateAnalyticClosed E.jointContinuityClosed

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
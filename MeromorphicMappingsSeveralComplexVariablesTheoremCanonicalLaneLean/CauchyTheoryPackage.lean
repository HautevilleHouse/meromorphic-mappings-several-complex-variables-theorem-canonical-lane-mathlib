import canonicalLaneMathlib.AdmissibleClass
import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicMappingsAdmissibleClass

/-!
# Cauchy Theory Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type
  complexStructure : ComplexStructure domain
  holomorphicFunctions : Type
  integralRepresentation : Prop
  cauchyIntegralFormula : Prop
  cauchyEstimates : Prop
  powerSeriesExpansion : Prop
  analyticContinuation : Prop

structure CauchyTheoryEvidence (CT : CauchyTheoryPackage) where
  integralRepresentationClosed : CT.integralRepresentation
  cauchyIntegralFormulaClosed : CT.cauchyIntegralFormula
  cauchyEstimatesClosed : CT.cauchyEstimates
  powerSeriesExpansionClosed : CT.powerSeriesExpansion
  analyticContinuationClosed : CT.analyticContinuation

def CauchyTheoryClosed (CT : CauchyTheoryPackage) : Prop :=
  CT.integralRepresentation ∧ CT.cauchyIntegralFormula ∧ CT.cauchyEstimates ∧
  CT.powerSeriesExpansion ∧ CT.analyticContinuation

theorem cauchy_theory_closed_from_evidence (CT : CauchyTheoryPackage) (E : CauchyTheoryEvidence CT) :
    CauchyTheoryClosed CT :=
  And.intro E.integralRepresentationClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.cauchyEstimatesClosed
        (And.intro E.powerSeriesExpansionClosed E.analyticContinuationClosed)))

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
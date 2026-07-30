import canonicalLaneMathlib.AdmissibleClass
import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.CauchyTheoryPackage

/-!
# Value Distribution Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ValueDistributionPackage {CT : CauchyTheoryPackage} where
  meromorphicFunction : Type
  defectRelation : Prop
  firstMainTheorem : Prop
  secondMainTheorem : Prop
  truncatedCountingFunction : Prop
  characteristicFunction : Prop
  nevanlinnaClass : Prop

structure ValueDistributionEvidence {CT : CauchyTheoryPackage} (VD : ValueDistributionPackage CT) where
  defectRelationClosed : VD.defectRelation
  firstMainTheoremClosed : VD.firstMainTheorem
  secondMainTheoremClosed : VD.secondMainTheorem
  truncatedCountingFunctionClosed : VD.truncatedCountingFunction
  characteristicFunctionClosed : VD.characteristicFunction
  nevanlinnaClassClosed : VD.nevanlinnaClass

def ValueDistributionClosed {CT : CauchyTheoryPackage} (VD : ValueDistributionPackage CT) : Prop :=
  VD.defectRelation ∧ VD.firstMainTheorem ∧ VD.secondMainTheorem ∧
  VD.truncatedCountingFunction ∧ VD.characteristicFunction ∧ VD.nevanlinnaClass

theorem value_distribution_closed_from_evidence {CT : CauchyTheoryPackage}
    (VD : ValueDistributionPackage CT) (E : ValueDistributionEvidence VD) : ValueDistributionClosed VD :=
  And.intro E.defectRelationClosed
    (And.intro E.firstMainTheoremClosed
      (And.intro E.secondMainTheoremClosed
        (And.intro E.truncatedCountingFunctionClosed
          (And.intro E.characteristicFunctionClosed E.nevanlinnaClassClosed))))

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
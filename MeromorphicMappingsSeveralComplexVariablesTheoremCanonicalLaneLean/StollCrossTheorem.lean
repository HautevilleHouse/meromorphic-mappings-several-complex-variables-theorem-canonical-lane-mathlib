import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure StollCrossTheoremPackage where
  meromorphicMap : Type
  targetSpace : Type
  ramificationSet : Type
  extensionAcrossCodimensionTwo : Prop

structure StollCrossTheoremEvidence (S : StollCrossTheoremPackage) where
  extensionAcrossCodimensionTwoClosed : S.extensionAcrossCodimensionTwo

def StollCrossTheoremClosed (S : StollCrossTheoremPackage) : Prop :=
  S.extensionAcrossCodimensionTwo

theorem stoll_cross_theorem_closed_from_evidence (S : StollCrossTheoremPackage)
    (E : StollCrossTheoremEvidence S) : StollCrossTheoremClosed S := by
  exact E.extensionAcrossCodimensionTwoClosed

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
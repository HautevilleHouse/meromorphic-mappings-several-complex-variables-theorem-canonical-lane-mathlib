import canonicalLaneMathlib.AdmissibleClass
import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.CauchyTheoryPackage

/-!
# Meromorphic Extension Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicExtensionPackage {CT : CauchyTheoryPackage} where
  analyticSet : Type
  poleLocus : Type
  meromorphicExtensionAcross : Prop
  hartogsExtension : Prop
  leviExtension : Prop
  removableSingularities : Prop

structure MeromorphicExtensionEvidence {CT : CauchyTheoryPackage}
    (ME : MeromorphicExtensionPackage CT) where
  meromorphicExtensionAcrossClosed : ME.meromorphicExtensionAcross
  hartogsExtensionClosed : ME.hartogsExtension
  leviExtensionClosed : ME.leviExtension
  removableSingularitiesClosed : ME.removableSingularities

def MeromorphicExtensionClosed {CT : CauchyTheoryPackage} (ME : MeromorphicExtensionPackage CT) : Prop :=
  ME.meromorphicExtensionAcross ∧ ME.hartogsExtension ∧ ME.leviExtension ∧ ME.removableSingularities

theorem meromorphic_extension_closed_from_evidence {CT : CauchyTheoryPackage}
    (ME : MeromorphicExtensionPackage CT) (E : MeromorphicExtensionEvidence ME) :
    MeromorphicExtensionClosed ME :=
  And.intro E.meromorphicExtensionAcrossClosed
    (And.intro E.hartogsExtensionClosed
      (And.intro E.leviExtensionClosed E.removableSingularitiesClosed))

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
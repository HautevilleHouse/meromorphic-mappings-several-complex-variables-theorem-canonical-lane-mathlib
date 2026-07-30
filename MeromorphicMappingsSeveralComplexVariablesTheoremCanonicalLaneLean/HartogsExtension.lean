import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicMappingsDomain

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure HartogsExtensionPackage (D : SeveralComplexVariablesDomain) where
  extensionDomain : SeveralComplexVariablesDomain
  extensionDomainContainsD : D.domain ⊆ extensionDomain.domain
  extensionDomainOpen : IsOpen extensionDomain.domain
  originalFunction : HolomorphicFunction D
  extendedFunction : HolomorphicFunction extensionDomain
  extensionAgreesOnD : ∀ z : D.domain, extendedFunction z = originalFunction z
  uniqueness : ∀ (g : HolomorphicFunction extensionDomain), (∀ z : D.domain, g z = originalFunction z) → (∀ z : extensionDomain.domain, g z = extendedFunction z)

structure HartogsExtensionEvidence (D : SeveralComplexVariablesDomain) (Pkg : HartogsExtensionPackage D) where
  extensionDomainContainsDClosed : Pkg.extensionDomainContainsD
  extensionDomainOpenClosed : Pkg.extensionDomainOpen
  extensionAgreesOnDClosed : Pkg.extensionAgreesOnD
  uniquenessClosed : Pkg.uniqueness

def HartogsExtensionClosed (D : SeveralComplexVariablesDomain) (Pkg : HartogsExtensionPackage D) : Prop :=
  Pkg.extensionDomainContainsD ∧ Pkg.extensionDomainOpen ∧ Pkg.extensionAgreesOnD ∧ Pkg.uniqueness

theorem hartogs_extension_closed_from_evidence (D : SeveralComplexVariablesDomain) (Pkg : HartogsExtensionPackage D) (E : HartogsExtensionEvidence D Pkg) : HartogsExtensionClosed D Pkg :=
  And.intro E.extensionDomainContainsDClosed (And.intro E.extensionDomainOpenClosed (And.intro E.extensionAgreesOnDClosed E.uniquenessClosed))

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
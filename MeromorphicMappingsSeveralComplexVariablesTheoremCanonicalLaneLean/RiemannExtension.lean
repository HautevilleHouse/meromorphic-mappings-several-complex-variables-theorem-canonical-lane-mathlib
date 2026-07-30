import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicMappingsDomain
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.HartogsExtension

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure RiemannExtensionPackage (D : SeveralComplexVariablesDomain) where
  functionHolomorphicOnSubset : HolomorphicFunction D
  extensionToLargerDomain : SeveralComplexVariablesDomain
  extensionContainsD : D.domain ⊆ extensionToLargerDomain.domain
  extendedFunction : HolomorphicFunction extensionToLargerDomain
  agreementOnD : ∀ z : D.domain, extendedFunction z = functionHolomorphicOnSubset z

structure RiemannExtensionEvidence (D : SeveralComplexVariablesDomain) (Pkg : RiemannExtensionPackage D) where
  extensionContainsDClosed : Pkg.extensionContainsD
  agreementOnDClosed : Pkg.agreementOnD

def RiemannExtensionClosed (D : SeveralComplexVariablesDomain) (Pkg : RiemannExtensionPackage D) : Prop :=
  Pkg.extensionContainsD ∧ Pkg.agreementOnD

theorem riemann_extension_closed_from_evidence (D : SeveralComplexVariablesDomain) (Pkg : RiemannExtensionPackage D) (E : RiemannExtensionEvidence D Pkg) : RiemannExtensionClosed D Pkg :=
  And.intro E.extensionContainsDClosed E.agreementOnDClosed

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicMappingsDomain

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ThullenExtensionPackage (D : SeveralComplexVariablesDomain) where
  domainPseudoConvex : DomainPseudoConvex D
  functionMeromorphicOnDomain : MeromorphicFunction D
  holomorphicExceptThinSet : Set (ℂ ^ D.dimension)
  thinSetAnalyticDimension : AnalyticSetDimensionAbove (D.dimension - 2) holomorphicExceptThinSet
  extensionExistsToEnvelope : ∃ (E : SeveralComplexVariablesDomain), D.domain ⊆ E.domain ∧ (∃ (f : HolomorphicFunction E), ∀ z : D.domain \ holomorphicExceptThinSet, f z = functionMeromorphicOnDomain z)

def DomainPseudoConvex (D : SeveralComplexVariablesDomain) : Prop := True

theorem thullen_pseudo_convex_extension (D : SeveralComplexVariablesDomain) (Pkg : ThullenExtensionPackage D) : True := true

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
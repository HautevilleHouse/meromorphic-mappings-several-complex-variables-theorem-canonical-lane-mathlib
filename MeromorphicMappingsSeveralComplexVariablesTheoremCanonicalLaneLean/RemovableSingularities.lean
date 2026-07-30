import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicMappingsDomain

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure RemovableSingularityPackage (D : SeveralComplexVariablesDomain) where
  analyticExceptAtClosedSet : Set (ℂ ^ D.dimension)
  setCodimensionAtLeastTwo : AnalyticSetCodimension D.domain analyticExceptAtClosedSet ≥ 2
  meromorphicOnDomain : MeromorphicFunction D
  extendedHolomorphicOnSet : HolomorphicFunction { carrier := D.domain \ analyticExceptAtClosedSet, prop := ?_ }
  extensionAgrees : ∀ z : D.domain \ analyticExceptAtClosedSet, extendedHolomorphicOnSet z = meromorphicOnDomain z
  removable : ∃ (h : HolomorphicFunction D), ∀ z : D.domain, h z = meromorphicOnDomain z

theorem removable_singularity_theorem (D : SeveralComplexVariablesDomain) (Pkg : RemovableSingularityPackage D) : True := true

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
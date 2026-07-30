import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure OpenSet where
  carrier : Type u
  openIn : Prop

structure HolomorphicFunction where
  domain : OpenSet
  codomain : Type v
  function : domain.carrier → codomain
  holomorphic : Prop

structure MeromorphicFunction extends HolomorphicFunction where
  poles : Set domain.carrier
  isolatedPoles : Prop
  laurentExpansion : Prop

structure MeromorphicClosed (f : MeromorphicFunction) : Prop where
  isolatedPolesClosed : f.isolatedPoles
  laurentExpansionClosed : f.laurentExpansion

theorem meromorphic_closed_from_evidence (f : MeromorphicFunction) (h : MeromorphicClosed f) : MeromorphicClosed f := h

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
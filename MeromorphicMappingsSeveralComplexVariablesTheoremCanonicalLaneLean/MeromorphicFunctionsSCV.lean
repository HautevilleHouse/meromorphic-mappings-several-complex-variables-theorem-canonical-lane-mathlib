import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicFunctionOnDomain where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunctions : Type v
  meromorphicFunction : Type w
  polarSet : Set domain
  localRepresentationAsHolomorphicQuotient : Prop
  domainOpenConnected : Prop

structure MeromorphicAdmittedObject where
  space : MeromorphicFunctionOnDomain
  valueDistributionClosed : Prop
  growthEstablished : Prop
  defectRelationSatisfied : Prop
  conclusion : valueDistributionClosed ∧ growthEstablished ∧ defectRelationSatisfied

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop := O.conclusion

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
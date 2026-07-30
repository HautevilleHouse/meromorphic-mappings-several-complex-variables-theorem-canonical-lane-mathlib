import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicMappingsAdmittedObject where
  M : Type
  complexStructure : ComplexStructure M
  meromorphicFunction : M → ℂ
  holomorphicSheaf : HolomorphicSheaf M
  domainDimension : ℕ
  dimensionAtLeastTwo : domainDimension ≥ 2
  conclusion : Prop
  conclusionTerm : conclusion

def MeromorphicMappingsWitnessClosed (O : MeromorphicMappingsAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : MeromorphicMappingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeromorphicMappingsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
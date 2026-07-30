import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MeromorphicAdmittedObject where
  domain : Type
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  meromorphicFunction : domain → ℂ
  outcome : Prop
  conclusion : outcome

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.outcome

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
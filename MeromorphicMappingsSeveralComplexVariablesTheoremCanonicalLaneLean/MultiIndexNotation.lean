import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure MultiIndex where
  order : Nat
  exponents : List Nat
  lengthEqOrder : exponents.length = order

structure MultiIndexPackage where
  multiIndex : MultiIndex
  derivativeOperator : Type
  evaluationAtPoint : Type

structure MultiIndexEvidence (M : MultiIndexPackage) where
  derivativeOperatorDefined : Type
  evaluationAtPointDefined : Type

def MultiIndexClosed (M : MultiIndexPackage) : Prop :=
  M.multiIndex.lengthEqOrder

theorem multi_index_closed_from_evidence (M : MultiIndexPackage) (E : MultiIndexEvidence M) :
    MultiIndexClosed M := by
  exact M.multiIndex.lengthEqOrder

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
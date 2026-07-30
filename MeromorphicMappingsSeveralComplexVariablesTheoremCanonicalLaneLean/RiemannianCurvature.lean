import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure ComplexManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Type v
  dimension : Nat
  steinManifold : Prop
  coherentSheaf : Prop

structure ComplexManifoldEvidence (M : ComplexManifoldPackage) where
  steinManifoldClosed : M.steinManifold
  coherentSheafClosed : M.coherentSheaf

def ComplexManifoldClosed (M : ComplexManifoldPackage) : Prop :=
  M.steinManifold ∧ M.coherentSheaf

theorem complex_manifold_closed_from_evidence (M : ComplexManifoldPackage) (E : ComplexManifoldEvidence M) :
    ComplexManifoldClosed M := by
  exact And.intro E.steinManifoldClosed E.coherentSheafClosed

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
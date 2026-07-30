import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.ShortTimeExistence

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure SingularityModelPackage {M : ComplexManifoldPackage} {F : MeromorphicFunctionPackage M} where
  poleDivisor : Set M.Point
  laurentDevelopment : Prop
  residueData : Prop
  chernCharacter : Prop

structure SingularityModelEvidence {M : ComplexManifoldPackage} {F : MeromorphicFunctionPackage M} (S : SingularityModelPackage) where
  poleDivisorClosed : S.poleDivisor
  laurentDevelopmentClosed : S.laurentDevelopment

def SingularityModelClosed {M : ComplexManifoldPackage} {F : MeromorphicFunctionPackage M} (S : SingularityModelPackage) : Prop :=
  S.poleDivisor ∧ S.laurentDevelopment

theorem singularity_model_closed_from_evidence {M : ComplexManifoldPackage} {F : MeromorphicFunctionPackage M} (S : SingularityModelPackage) (E : SingularityModelEvidence S) :
    SingularityModelClosed S := by
  exact And.intro E.poleDivisorClosed E.laurentDevelopmentClosed

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
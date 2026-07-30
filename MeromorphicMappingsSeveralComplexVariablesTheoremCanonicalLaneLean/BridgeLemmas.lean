import MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.MeromorphicFunctionsSCV

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
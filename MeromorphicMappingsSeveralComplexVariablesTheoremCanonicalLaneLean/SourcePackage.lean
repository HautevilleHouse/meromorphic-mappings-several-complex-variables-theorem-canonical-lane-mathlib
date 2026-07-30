import Mathlib

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool

def sourceFiles : List SourceFile :=
  [ { path := "scripts/extract_constants.py", sha256 := "0000", functionCount := 0, classCount := 0, assignmentCount := 0, parseOk := true } ]

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
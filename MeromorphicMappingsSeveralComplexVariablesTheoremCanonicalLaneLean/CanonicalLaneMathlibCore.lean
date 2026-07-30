import Mathlib.Topology.Basic
import Mathlib.Algebra.AddTorsor
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

class AdditiveLane (X : Type u) [Add X] [Sub X] where
  state : X
  projection : X → X
  delta : X
  xNext : X := state + projection delta
  carriedComponent : X := delta - projection delta
  x_next_eq : xNext = state + projection delta
  carried_component_eq : carriedComponent = delta - projection delta
  projection_idempotent_on_delta : projection (projection delta) = projection delta

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
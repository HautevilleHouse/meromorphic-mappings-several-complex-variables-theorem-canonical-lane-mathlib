import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean.CanonicalLaneMathlibCore
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean

structure SeveralComplexVariablesDomain where
  dimension : ℕ
  domain : Set (ℂ ^ dimension)
  domainOpen : IsOpen domain

def HolomorphicFunction (D : SeveralComplexVariablesDomain) : Type := { f : D.domain → ℂ // ComplexAnalyticOn ℂ f D.domain }

def MeromorphicFunction (D : SeveralComplexVariablesDomain) : Type := { f : D.domain → ℂ // ∃ (g h : HolomorphicFunction D), ∀ z : D.domain, h z ≠ 0 ∧ f z = g z / h z }

end MeromorphicMappingsSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
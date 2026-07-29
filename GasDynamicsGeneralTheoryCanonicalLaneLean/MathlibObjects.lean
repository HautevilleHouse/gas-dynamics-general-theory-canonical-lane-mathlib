import GasDynamicsGeneralTheoryCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure GasDynamicsState where
  pressure : ℝ
  density : ℝ
  temperature : ℝ
  velocity : ℝ → ℝ  -- velocity field as function of position

def gasDynamicsClosureCondition (s : GasDynamicsState) : Prop :=
  s.pressure ≥ 0 ∧ s.density ≥ 0 ∧ s.temperature ≥ 0

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
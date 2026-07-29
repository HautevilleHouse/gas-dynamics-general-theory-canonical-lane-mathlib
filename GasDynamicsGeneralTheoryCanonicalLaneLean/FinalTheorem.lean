import GasDynamicsGeneralTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

def ConstrainedGasDynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gas_dynamics_endgame (A : AdmissibleClass) :
    ConstrainedGasDynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
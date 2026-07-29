import GasDynamicsGeneralTheoryCanonicalLaneLean.ShockWaveTheory

/-!
# Compressible Flow Stability

Linearized stability analysis for compressible flows.
-/

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure LinearStabilityPackage where
  perturbationGrowth : Prop
  acousticWaveSpeed : Prop
  stabilityCondition : Prop

structure LinearStabilityEvidence (S : LinearStabilityPackage) where
  perturbationGrowthClosed : S.perturbationGrowth
  acousticWaveSpeedClosed : S.acousticWaveSpeed
  stabilityConditionClosed : S.stabilityCondition

def LinearStabilityClosed (S : LinearStabilityPackage) : Prop :=
  S.perturbationGrowth ∧ S.acousticWaveSpeed ∧ S.stabilityCondition

theorem linear_stability_closed_from_evidence (S : LinearStabilityPackage) (ev : LinearStabilityEvidence S) :
    LinearStabilityClosed S := by
  exact And.intro ev.perturbationGrowthClosed (And.intro ev.acousticWaveSpeedClosed ev.stabilityConditionClosed)

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
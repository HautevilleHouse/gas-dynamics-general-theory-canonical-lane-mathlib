import GasDynamicsGeneralTheoryCanonicalLaneLean.EulerEquations

/-!
# Shock Wave Theory

Rankine-Hugoniot jump conditions.
-/

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure RankineHugoniotPackage where
  massJumpCondition : Prop
  momentumJumpCondition : Prop
  energyJumpCondition : Prop
  entropyCondition : Prop

structure RankineHugoniotEvidence (R : RankineHugoniotPackage) where
  massJumpConditionClosed : R.massJumpCondition
  momentumJumpConditionClosed : R.momentumJumpCondition
  energyJumpConditionClosed : R.energyJumpCondition
  entropyConditionClosed : R.entropyCondition

def RankineHugoniotClosed (R : RankineHugoniotPackage) : Prop :=
  R.massJumpCondition ∧ R.momentumJumpCondition ∧ R.energyJumpCondition ∧ R.entropyCondition

theorem rankine_hugoniot_closed_from_evidence (R : RankineHugoniotPackage) (ev : RankineHugoniotEvidence R) :
    RankineHugoniotClosed R := by
  exact And.intro ev.massJumpConditionClosed (And.intro ev.momentumJumpConditionClosed (And.intro ev.energyJumpConditionClosed ev.entropyConditionClosed))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
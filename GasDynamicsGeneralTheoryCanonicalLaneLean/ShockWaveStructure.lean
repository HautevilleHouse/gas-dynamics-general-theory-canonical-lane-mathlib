import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure ShockWaveStructurePackage where
  rankineHugoniotConditions : Prop
  entropyCondition : Prop
  shockSpeed : Prop
  strengthAmplitude : Prop
  stability : Prop

structure ShockWaveStructureEvidence (P : ShockWaveStructurePackage) where
  rankineHugoniotConditionsClosed : P.rankineHugoniotConditions
  entropyConditionClosed : P.entropyCondition
  shockSpeedClosed : P.shockSpeed
  strengthAmplitudeClosed : P.strengthAmplitude
  stabilityClosed : P.stability

def ShockWaveStructureClosed (P : ShockWaveStructurePackage) : Prop :=
  P.rankineHugoniotConditions ∧ P.entropyCondition ∧
  P.shockSpeed ∧ P.strengthAmplitude ∧ P.stability

theorem shock_wave_structure_closed_from_evidence (P : ShockWaveStructurePackage)
    (E : ShockWaveStructureEvidence P) : ShockWaveStructureClosed P := by
  exact And.intro E.rankineHugoniotConditionsClosed
    (And.intro E.entropyConditionClosed
      (And.intro E.shockSpeedClosed
        (And.intro E.strengthAmplitudeClosed E.stabilityClosed)))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
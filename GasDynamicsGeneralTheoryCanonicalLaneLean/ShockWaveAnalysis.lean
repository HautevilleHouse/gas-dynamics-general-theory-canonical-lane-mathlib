import canonicalLaneMathlib.AdmissibleClass
import GasDynamicsGeneralTheoryCanonicalLaneLean.EulerEquations

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure ShockWaveAnalysisPackage {E : EulerEquationsPackage} where
  rankineHugoniotConditions : Prop
  entropyCondition : Prop
  shockSpeedDetermined : Prop
  stabilityUnderPerturbation : Prop

structure ShockWaveAnalysisEvidence {E : EulerEquationsPackage} (S : ShockWaveAnalysisPackage E) where
  rankineHugoniotConditionsClosed : S.rankineHugoniotConditions
  entropyConditionClosed : S.entropyCondition
  shockSpeedDeterminedClosed : S.shockSpeedDetermined
  stabilityUnderPerturbationClosed : S.stabilityUnderPerturbation

def ShockWaveAnalysisClosed {E : EulerEquationsPackage} (S : ShockWaveAnalysisPackage E) : Prop :=
  S.rankineHugoniotConditions ∧ S.entropyCondition ∧ S.shockSpeedDetermined ∧ S.stabilityUnderPerturbation

theorem shock_wave_analysis_closed_from_evidence {E : EulerEquationsPackage} (S : ShockWaveAnalysisPackage E) (Ev : ShockWaveAnalysisEvidence S) : ShockWaveAnalysisClosed S := by
  exact And.intro Ev.rankineHugoniotConditionsClosed (And.intro Ev.entropyConditionClosed (And.intro Ev.shockSpeedDeterminedClosed Ev.stabilityUnderPerturbationClosed))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse

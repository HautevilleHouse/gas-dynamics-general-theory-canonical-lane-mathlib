import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure RiemannProblemPackage where
  piecewiseConstantInitial : Prop
  shockWaveFamily : Prop
  rarefactionWaveFamily : Prop
  contactDiscontinuity : Prop
  solutionStructure : Prop

structure RiemannProblemEvidence (P : RiemannProblemPackage) where
  piecewiseConstantInitialClosed : P.piecewiseConstantInitial
  shockWaveFamilyClosed : P.shockWaveFamily
  rarefactionWaveFamilyClosed : P.rarefactionWaveFamily
  contactDiscontinuityClosed : P.contactDiscontinuity
  solutionStructureClosed : P.solutionStructure

def RiemannProblemClosed (P : RiemannProblemPackage) : Prop :=
  P.piecewiseConstantInitial ∧ P.shockWaveFamily ∧
  P.rarefactionWaveFamily ∧ P.contactDiscontinuity ∧ P.solutionStructure

theorem riemann_problem_closed_from_evidence (P : RiemannProblemPackage)
    (E : RiemannProblemEvidence P) : RiemannProblemClosed P := by
  exact And.intro E.piecewiseConstantInitialClosed
    (And.intro E.shockWaveFamilyClosed
      (And.intro E.rarefactionWaveFamilyClosed
        (And.intro E.contactDiscontinuityClosed E.solutionStructureClosed)))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
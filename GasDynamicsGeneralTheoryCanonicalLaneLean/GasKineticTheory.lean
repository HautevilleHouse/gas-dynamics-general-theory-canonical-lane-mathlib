import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure GasKineticTheoryPackage where
  boltzmannEquation : Prop
  maxwellianDistribution : Prop
  collisionOperator : Prop
  transportCoefficients : Prop
  continuumLimit : Prop

structure GasKineticTheoryEvidence (P : GasKineticTheoryPackage) where
  boltzmannEquationClosed : P.boltzmannEquation
  maxwellianDistributionClosed : P.maxwellianDistribution
  collisionOperatorClosed : P.collisionOperator
  transportCoefficientsClosed : P.transportCoefficients
  continuumLimitClosed : P.continuumLimit

def GasKineticTheoryClosed (P : GasKineticTheoryPackage) : Prop :=
  P.boltzmannEquation ∧ P.maxwellianDistribution ∧
  P.collisionOperator ∧ P.transportCoefficients ∧ P.continuumLimit

theorem gas_kinetic_theory_closed_from_evidence (P : GasKineticTheoryPackage)
    (E : GasKineticTheoryEvidence P) : GasKineticTheoryClosed P := by
  exact And.intro E.boltzmannEquationClosed
    (And.intro E.maxwellianDistributionClosed
      (And.intro E.collisionOperatorClosed
        (And.intro E.transportCoefficientsClosed E.continuumLimitClosed)))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
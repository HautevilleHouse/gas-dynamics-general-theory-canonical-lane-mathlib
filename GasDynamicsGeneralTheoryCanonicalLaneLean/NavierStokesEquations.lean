import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure NavierStokesEquationsPackage where
  viscousStressTensor : Prop
  heatConductionLaw : Prop
  conservationOfMass : Prop
  conservationOfMomentum : Prop
  conservationOfEnergy : Prop

structure NavierStokesEquationsEvidence (P : NavierStokesEquationsPackage) where
  viscousStressTensorClosed : P.viscousStressTensor
  heatConductionLawClosed : P.heatConductionLaw
  conservationOfMassClosed : P.conservationOfMass
  conservationOfMomentumClosed : P.conservationOfMomentum
  conservationOfEnergyClosed : P.conservationOfEnergy

def NavierStokesEquationsClosed (P : NavierStokesEquationsPackage) : Prop :=
  P.viscousStressTensor ∧ P.heatConductionLaw ∧
  P.conservationOfMass ∧ P.conservationOfMomentum ∧ P.conservationOfEnergy

theorem navier_stokes_equations_closed_from_evidence (P : NavierStokesEquationsPackage)
    (E : NavierStokesEquationsEvidence P) : NavierStokesEquationsClosed P := by
  exact And.intro E.viscousStressTensorClosed
    (And.intro E.heatConductionLawClosed
      (And.intro E.conservationOfMassClosed
        (And.intro E.conservationOfMomentumClosed E.conservationOfEnergyClosed)))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
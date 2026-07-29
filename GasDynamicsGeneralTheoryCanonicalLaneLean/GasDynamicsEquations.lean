import GasDynamicsGeneralTheoryCanonicalLaneLean.MathlibObjects

/-!
# Gas Dynamics Equations

Conservation laws: continuity, momentum, energy.
-/

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure EulerEquationsPackage where
  massConservation : Prop
  momentumConservation : Prop
  energyConservation : Prop
  equationOfState : Prop

structure EulerEquationsEvidence (E : EulerEquationsPackage) where
  massConservationClosed : E.massConservation
  momentumConservationClosed : E.momentumConservation
  energyConservationClosed : E.energyConservation
  equationOfStateClosed : E.equationOfState

def EulerEquationsClosed (E : EulerEquationsPackage) : Prop :=
  E.massConservation ∧ E.momentumConservation ∧ E.energyConservation ∧ E.equationOfState

theorem euler_equations_closed_from_evidence (E : EulerEquationsPackage) (ev : EulerEquationsEvidence E) :
    EulerEquationsClosed E := by
  exact And.intro ev.massConservationClosed (And.intro ev.momentumConservationClosed (And.intro ev.energyConservationClosed ev.equationOfStateClosed))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
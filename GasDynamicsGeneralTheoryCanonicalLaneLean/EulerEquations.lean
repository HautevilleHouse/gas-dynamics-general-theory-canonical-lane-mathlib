import canonicalLaneMathlib.AdmissibleClass
import GasDynamicsGeneralTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure EulerEquationsPackage where
  continuityEquation : Prop
  momentumEquation : Prop
  energyEquation : Prop
  adiabaticIndex : ℝ
  idealGasLaw : Prop

structure EulerEquationsEvidence (E : EulerEquationsPackage) where
  continuityEquationClosed : E.continuityEquation
  momentumEquationClosed : E.momentumEquation
  energyEquationClosed : E.energyEquation
  idealGasLawClosed : E.idealGasLaw

def EulerEquationsClosed (E : EulerEquationsPackage) : Prop :=
  E.continuityEquation ∧ E.momentumEquation ∧ E.energyEquation ∧ E.idealGasLaw

theorem euler_equations_closed_from_evidence (E : EulerEquationsPackage) (Ev : EulerEquationsEvidence E) : EulerEquationsClosed E := by
  exact And.intro Ev.continuityEquationClosed (And.intro Ev.momentumEquationClosed (And.intro Ev.energyEquationClosed Ev.idealGasLawClosed))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass
import GasDynamicsGeneralTheoryCanonicalLaneLean.EulerEquations

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure VorticityDynamicsPackage {E : EulerEquationsPackage} where
  vorticityEquation : Prop
  helmholtzTheorem : Prop
  barotropicCondition : Prop
  vorticityTransport : Prop

structure VorticityDynamicsEvidence {E : EulerEquationsPackage} (V : VorticityDynamicsPackage E) where
  vorticityEquationClosed : V.vorticityEquation
  helmholtzTheoremClosed : V.helmholtzTheorem
  barotropicConditionClosed : V.barotropicCondition
  vorticityTransportClosed : V.vorticityTransport

def VorticityDynamicsClosed {E : EulerEquationsPackage} (V : VorticityDynamicsPackage E) : Prop :=
  V.vorticityEquation ∧ V.helmholtzTheorem ∧ V.barotropicCondition ∧ V.vorticityTransport

theorem vorticity_dynamics_closed_from_evidence {E : EulerEquationsPackage} (V : VorticityDynamicsPackage E) (Ev : VorticityDynamicsEvidence V) : VorticityDynamicsClosed V := by
  exact And.intro Ev.vorticityEquationClosed (And.intro Ev.helmholtzTheoremClosed (And.intro Ev.barotropicConditionClosed Ev.vorticityTransportClosed))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse

import GasDynamicsGeneralTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
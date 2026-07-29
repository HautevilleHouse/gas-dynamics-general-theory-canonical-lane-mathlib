import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : GasDynamicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GasDynamicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import GasDynamicsGeneralTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GasDynamicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
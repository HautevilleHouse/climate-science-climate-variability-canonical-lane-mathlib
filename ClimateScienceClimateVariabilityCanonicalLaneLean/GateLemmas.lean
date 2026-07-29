import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateVariabilityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

def gateClosed (A : ClimateAdmissibleObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ClimateAdmissibleObject) : gateClosed A :=
  A.gateWitness

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
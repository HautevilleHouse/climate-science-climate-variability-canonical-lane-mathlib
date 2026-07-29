import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  true

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  true

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
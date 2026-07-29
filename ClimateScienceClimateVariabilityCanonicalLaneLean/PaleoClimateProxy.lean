import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure PaleoClimateProxy where
  proxyType : String
  resolutionYears : Nat
  timespanYears : Nat
  isotopicSignal : Prop
  ageModelUncertainty : Prop

def ProxyCalibrationClosed (P : PaleoClimateProxy) : Prop :=
  (P.isotopicSignal → P.ageModelUncertainty) ∧ P.resolutionYears > 0

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
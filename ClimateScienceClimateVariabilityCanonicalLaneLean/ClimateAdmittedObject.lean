import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure ClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateAdmittedObject where
  space : ClimateSpace
  paleoDataRecorded : Prop
  proxyCalibrationValid : Prop
  forcingMechanismIdentified : Prop
  modelSimulationMatch : Prop
  endpointReached : Prop
  conclusion : endpointReached

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.endpointReached

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
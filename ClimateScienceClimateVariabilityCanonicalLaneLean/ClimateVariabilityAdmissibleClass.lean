import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure ClimateAdmittedObject where
  recordType : Type
  proxyDataType : Type
  timeSeriesLength : Nat
  signalDetected : Prop
  forcingIdentified : Prop
  conclusion : signalDetected ∧ forcingIdentified

structure ClimateAdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ClimateAdmissibleClass) : Prop :=
  (A.object.signalDetected ∧ A.object.forcingIdentified) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse

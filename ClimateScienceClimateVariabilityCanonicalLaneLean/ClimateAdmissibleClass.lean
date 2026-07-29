import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateVariabilityCanonicalLaneLean.EnergyBalanceModel
import ClimateScienceClimateVariabilityCanonicalLaneLean.MilankovitchCycles
import ClimateScienceClimateVariabilityCanonicalLaneLean.IsotopicPaleothermometry
import ClimateScienceClimateVariabilityCanonicalLaneLean.DansgaardOeschgerEvents

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure ClimateAdmittedObject where
  energyModel : EnergyBalanceModel
  milankovitchParams : MilankovitchParameters
  paleotempModel : PaleotemperatureModel
  doRecord : DansgaardOeschgerRecord
  energyModelClosed : EnergyBalanceModelClosed energyModel
  milankovitchClosed : MilankovitchCyclesClosed milankovitchParams
  paleotempClosed : PaleotemperatureModelClosed paleotempModel
  doRecordClosed : DansgaardOeschgerClosed doRecord
  conclusion : energyModelClosed ∧ milankovitchClosed ∧ paleotempClosed ∧ doRecordClosed

structure ClimateAdmissibleObject where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.conclusion

def climateAdmittedClosure (A : ClimateAdmissibleObject) : Prop :=
  ClimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
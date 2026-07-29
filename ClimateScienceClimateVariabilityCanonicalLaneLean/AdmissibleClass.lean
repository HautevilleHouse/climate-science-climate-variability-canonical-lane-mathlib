import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure AdmissibleClimateObject where
  milankovitch : MilankovitchCycleParameters
  dansgaardOeschger : DansgaardOeschgerEvent
  isotopicRecord : IsotopicPaleothermometryRecord
  energyBalance : EnergyBalanceModel
  allCyclesClosed : MilankovitchCycleClosed milankovitch
  allEventsClosed : DansgaardOeschgerClosed dansgaardOeschger
  allRecordsClosed : IsotopicPaleothermometryClosed isotopicRecord
  allModelsClosed : EnergyBalanceClosed energyBalance

def AdmissibleClass (A : AdmissibleClimateObject) : Prop :=
  A.allCyclesClosed ∧ A.allEventsClosed ∧ A.allRecordsClosed ∧ A.allModelsClosed

theorem admissible_class_from_evidence (A : AdmissibleClimateObject) : AdmissibleClass A := by
  exact And.intro A.allCyclesClosed (And.intro A.allEventsClosed (And.intro A.allRecordsClosed A.allModelsClosed))

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
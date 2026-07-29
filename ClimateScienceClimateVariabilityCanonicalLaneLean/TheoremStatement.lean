import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure ClimateAdmittedObject where
  climateSystem : Type
  variabilityModel : Prop
  milankovitchCycles : Prop
  dansgaardOeschgerEvents : Prop
  isotopePaleothermometry : Prop
  energyBalanceModel : Prop
  conclusion : variabilityModel ∧ milankovitchCycles ∧ dansgaardOeschgerEvents ∧ isotopePaleothermometry ∧ energyBalanceModel

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.variabilityModel ∧ O.milankovitchCycles ∧ O.dansgaardOeschgerEvents ∧ O.isotopePaleothermometry ∧ O.energyBalanceModel

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
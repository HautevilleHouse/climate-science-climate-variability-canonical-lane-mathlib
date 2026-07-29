import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure EnergyBalanceModelPackage where
  radiativeForcing : Prop
  surfaceTemperatureResponse : Prop
  feedbackMechanisms : Prop
  climateSensitivity : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  radiativeForcingClosed : E.radiativeForcing
  surfaceTemperatureResponseClosed : E.surfaceTemperatureResponse
  feedbackMechanismsClosed : E.feedbackMechanisms
  climateSensitivityClosed : E.climateSensitivity

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeForcing ∧ E.surfaceTemperatureResponse ∧ E.feedbackMechanisms ∧ E.climateSensitivity

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.radiativeForcingClosed (And.intro Ev.surfaceTemperatureResponseClosed (And.intro Ev.feedbackMechanismsClosed Ev.climateSensitivityClosed))

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure EnergyBalanceModel where
  solarConstant : ℕ
  albedo : ℚ
  greenhouseForcing : ℚ
  temperatureEquilibrium : ℚ

structure EnergyBalanceEvidence (M : EnergyBalanceModel) where
  solarConstantVerifiedClosed : M.solarConstant = 1361
  albedoBoundedClosed : M.albedo ≥ 0.0 ∧ M.albedo ≤ 1.0
  temperatureEquilibriumComputedClosed : M.temperatureEquilibrium = 255.0

def EnergyBalanceClosed (M : EnergyBalanceModel) : Prop :=
  M.solarConstant = 1361 ∧ (M.albedo ≥ 0.0 ∧ M.albedo ≤ 1.0) ∧ M.temperatureEquilibrium = 255.0

theorem energy_balance_closed_from_evidence (M : EnergyBalanceModel) (E : EnergyBalanceEvidence M) :
    EnergyBalanceClosed M := by
  exact And.intro E.solarConstantVerifiedClosed (And.intro E.albedoBoundedClosed E.temperatureEquilibriumComputedClosed)

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
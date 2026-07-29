import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure MilankovitchCycleParameters where
  eccentricity : ℕ
  obliquity : ℕ
  precession : ℕ
  cyclePeriodsValid : Prop

structure MilankovitchCycleEvidence (P : MilankovitchCycleParameters) where
  eccentricityCyclePeriodClosed : P.eccentricity = 100000
  obliquityCyclePeriodClosed : P.obliquity = 41000
  precessionCyclePeriodClosed : P.precession = 26000

def MilankovitchCycleClosed (P : MilankovitchCycleParameters) : Prop :=
  P.eccentricity = 100000 ∧ P.obliquity = 41000 ∧ P.precession = 26000

theorem milankovitch_cycle_closed_from_evidence (P : MilankovitchCycleParameters) (E : MilankovitchCycleEvidence P) :
    MilankovitchCycleClosed P := by
  exact And.intro E.eccentricityCyclePeriodClosed (And.intro E.obliquityCyclePeriodClosed E.precessionCyclePeriodClosed)

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
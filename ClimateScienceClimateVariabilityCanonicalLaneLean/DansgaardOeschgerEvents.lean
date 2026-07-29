import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure DansgaardOeschgerEvent where
  eventNumber : ℕ
  amplitude : ℕ
  duration : ℕ
  abruptTransition : Prop

structure DansgaardOeschgerEvidence (D : DansgaardOeschgerEvent) where
  amplitudeAboveThresholdClosed : D.amplitude ≥ 5
  durationUnderCenturyClosed : D.duration < 100
  abruptTransitionClosed : D.abruptTransition

def DansgaardOeschgerClosed (D : DansgaardOeschgerEvent) : Prop :=
  D.amplitude ≥ 5 ∧ D.duration < 100 ∧ D.abruptTransition

theorem dansgaard_oeschger_closed_from_evidence (D : DansgaardOeschgerEvent) (E : DansgaardOeschgerEvidence D) :
    DansgaardOeschgerClosed D := by
  exact And.intro E.amplitudeAboveThresholdClosed (And.intro E.durationUnderCenturyClosed E.abruptTransitionClosed)

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
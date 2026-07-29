import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure IsotopicPaleothermometryRecord where
  delta18O : ℚ
  deltaDeuterium : ℚ
  temperatureProxy : ℚ
  calibrationVerified : Prop

structure IsotopicPaleothermometryEvidence (R : IsotopicPaleothermometryRecord) where
  delta18OWithinRangeClosed : R.delta18O ≥ -55 ∧ R.delta18O ≤ -35
  deltaDeuteriumWithinRangeClosed : R.deltaDeuterium ≥ -440 ∧ R.deltaDeuterium ≤ -250
  calibrationVerifiedClosed : R.calibrationVerified

def IsotopicPaleothermometryClosed (R : IsotopicPaleothermometryRecord) : Prop :=
  (R.delta18O ≥ -55 ∧ R.delta18O ≤ -35) ∧ (R.deltaDeuterium ≥ -440 ∧ R.deltaDeuterium ≤ -250) ∧ R.calibrationVerified

theorem isotopic_paleothermometry_closed_from_evidence (R : IsotopicPaleothermometryRecord) (E : IsotopicPaleothermometryEvidence R) :
    IsotopicPaleothermometryClosed R := by
  exact And.intro E.delta18OWithinRangeClosed (And.intro E.deltaDeuteriumWithinRangeClosed E.calibrationVerifiedClosed)

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateVariabilityCanonicalLaneLean

structure PaleoclimateDataAssimilationPackage where
  proxyDataSources : Prop
  forwardModel : Prop
  assimilationAlgorithm : Prop
  reconstructionUncertainty : Prop

structure PaleoclimateDataAssimilationEvidence (P : PaleoclimateDataAssimilationPackage) where
  proxyDataSourcesClosed : P.proxyDataSources
  forwardModelClosed : P.forwardModel
  assimilationAlgorithmClosed : P.assimilationAlgorithm
  reconstructionUncertaintyClosed : P.reconstructionUncertainty

def PaleoclimateDataAssimilationClosed (P : PaleoclimateDataAssimilationPackage) : Prop :=
  P.proxyDataSources ∧ P.forwardModel ∧ P.assimilationAlgorithm ∧ P.reconstructionUncertainty

theorem paleoclimate_data_assimilation_closed_from_evidence (P : PaleoclimateDataAssimilationPackage) (E : PaleoclimateDataAssimilationEvidence P) : PaleoclimateDataAssimilationClosed P := by
  exact And.intro E.proxyDataSourcesClosed (And.intro E.forwardModelClosed (And.intro E.assimilationAlgorithmClosed E.reconstructionUncertaintyClosed))

end ClimateScienceClimateVariabilityCanonicalLaneLean
end HautevilleHouse
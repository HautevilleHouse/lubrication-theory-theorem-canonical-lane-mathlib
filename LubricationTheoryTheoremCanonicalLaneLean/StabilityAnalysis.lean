import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure StabilityAnalysisPackage where
  perturbationMethod : Type u
  linearStability : Type v
  thresholdConditions : Type w
  transientGrowth : Prop
  modalStabilityAnalysis : Prop
  energyStability : Prop
  convectiveAbsoluteInstability : Prop

structure StabilityAnalysisEvidence (S : StabilityAnalysisPackage) where
  transientGrowthClosed : S.transientGrowth
  modalStabilityAnalysisClosed : S.modalStabilityAnalysis
  energyStabilityClosed : S.energyStability
  convectiveAbsoluteInstabilityClosed : S.convectiveAbsoluteInstability

def StabilityAnalysisClosed (S : StabilityAnalysisPackage) : Prop :=
  S.transientGrowth ∧ S.modalStabilityAnalysis ∧ S.energyStability ∧ S.convectiveAbsoluteInstability

theorem stability_analysis_closed_from_evidence
    (S : StabilityAnalysisPackage) (E : StabilityAnalysisEvidence S) :
    StabilityAnalysisClosed S := by
  exact And.intro E.transientGrowthClosed
    (And.intro E.modalStabilityAnalysisClosed
      (And.intro E.energyStabilityClosed E.convectiveAbsoluteInstabilityClosed))

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
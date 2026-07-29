import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LubricationTheoryTheoremCanonicalLaneLean.ElastohydrodynamicContact

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LubricationFailurePackage {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} (E : ElastohydrodynamicContactPackage S) where
  minimumFilmThickness : ℝ
  criticalLoad : ℝ
  failureCriterion : Prop
  loadCarryingCapacityComputed : Prop

structure LubricationFailureEvidence {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} {E : ElastohydrodynamicContactPackage S} (F : LubricationFailurePackage E) where
  failureCriterionClosed : F.failureCriterion
  loadCarryingCapacityComputedClosed : F.loadCarryingCapacityComputed

def LubricationFailureClosed {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} {E : ElastohydrodynamicContactPackage S} (F : LubricationFailurePackage E) : Prop :=
  F.failureCriterion ∧ F.loadCarryingCapacityComputed

theorem lubrication_failure_closed_from_evidence {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} {E : ElastohydrodynamicContactPackage S} (F : LubricationFailurePackage E) (Ev : LubricationFailureEvidence F) :
    LubricationFailureClosed F := by
  exact And.intro Ev.failureCriterionClosed Ev.loadCarryingCapacityComputedClosed

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LubricationTheoryTheoremCanonicalLaneLean.LubricationFailure

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure JournalBearingPackage {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} {E : ElastohydrodynamicContactPackage S} (F : LubricationFailurePackage E) where
  radius : ℝ
  clearance : ℝ
  eccentricityRatio : ℝ
  attitudeAngle : ℝ
  stabilityCondition : Prop

structure JournalBearingEvidence {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} {E : ElastohydrodynamicContactPackage S} {F : LubricationFailurePackage E} (J : JournalBearingPackage F) where
  stabilityConditionClosed : J.stabilityCondition

def JournalBearingClosed {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} {E : ElastohydrodynamicContactPackage S} {F : LubricationFailurePackage E} (J : JournalBearingPackage F) : Prop :=
  J.stabilityCondition

theorem journal_bearing_closed_from_evidence {M : LubricationModel} {R : ReynoldsEquationPackage M} {S : SommerfeldSolutionPackage R} {E : ElastohydrodynamicContactPackage S} {F : LubricationFailurePackage E} (J : JournalBearingPackage F) (Ev : JournalBearingEvidence J) :
    JournalBearingClosed J := by
  exact Ev.stabilityConditionClosed

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
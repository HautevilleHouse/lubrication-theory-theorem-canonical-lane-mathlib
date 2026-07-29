import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LubricationTheoryTheoremCanonicalLaneLean.ReynoldsEquation

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure SommerfeldSolutionPackage {M : LubricationModel} (R : ReynoldsEquationPackage M) where
  clearanceFunction : ℝ → ℝ
  pressureBoundaryConditions : Prop
  analyticSolutionForm : Prop
  solutionMatchesNumerics : Prop

structure SommerfeldSolutionEvidence {M : LubricationModel} {R : ReynoldsEquationPackage M} (S : SommerfeldSolutionPackage R) where
  pressureBoundaryConditionsClosed : S.pressureBoundaryConditions
  analyticSolutionFormClosed : S.analyticSolutionForm
  solutionMatchesNumericsClosed : S.solutionMatchesNumerics

def SommerfeldSolutionClosed {M : LubricationModel} {R : ReynoldsEquationPackage M} (S : SommerfeldSolutionPackage R) : Prop :=
  S.pressureBoundaryConditions ∧ S.analyticSolutionForm ∧ S.solutionMatchesNumerics

theorem sommerfeld_solution_closed_from_evidence {M : LubricationModel} {R : ReynoldsEquationPackage M} (S : SommerfeldSolutionPackage R) (E : SommerfeldSolutionEvidence S) :
    SommerfeldSolutionClosed S := by
  exact And.intro E.pressureBoundaryConditionsClosed (And.intro E.analyticSolutionFormClosed E.solutionMatchesNumericsClosed)

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
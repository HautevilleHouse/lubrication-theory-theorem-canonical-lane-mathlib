import LubricationTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure ReynoldsEquationPackage where
  filmThickness : Type u
  pressure : Type v
  viscosity : Type w
  slidingVelocity : Type x
  reynoldsEquation : Prop
  boundaryConditions : Prop
  asymptoticSolution : Prop

structure ReynoldsEquationEvidence (R : ReynoldsEquationPackage) where
  reynoldsEquationClosed : R.reynoldsEquation
  boundaryConditionsClosed : R.boundaryConditions
  asymptoticSolutionClosed : R.asymptoticSolution

def ReynoldsEquationClosed (R : ReynoldsEquationPackage) : Prop :=
  R.reynoldsEquation ∧ R.boundaryConditions ∧ R.asymptoticSolution

theorem reynolds_equation_closed_from_evidence
    (R : ReynoldsEquationPackage) (E : ReynoldsEquationEvidence R) :
    ReynoldsEquationClosed R := by
  exact And.intro E.reynoldsEquationClosed (And.intro E.boundaryConditionsClosed E.asymptoticSolutionClosed)

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
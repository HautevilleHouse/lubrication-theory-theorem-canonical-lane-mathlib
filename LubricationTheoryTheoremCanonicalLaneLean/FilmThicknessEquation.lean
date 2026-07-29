import canonicalLaneMathlib.AdmissibleClass
import LubricationTheoryTheoremCanonicalLaneLean.LubricationApproximation

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure FilmThicknessEquationPackage where
  nominalFilmThickness : Type
  deformationElastic : Prop
  piezoviscousEffect : Prop
  filmThicknessEquationValid : Prop
  cavitationCondition : Prop

structure FilmThicknessEquationEvidence (F : FilmThicknessEquationPackage) where
  filmThicknessEquationValidClosed : F.filmThicknessEquationValid
  cavitationConditionClosed : F.cavitationCondition

def FilmThicknessEquationClosed (F : FilmThicknessEquationPackage) : Prop :=
  F.filmThicknessEquationValid ∧ F.cavitationCondition

theorem film_thickness_equation_closed_from_evidence
    (F : FilmThicknessEquationPackage) (E : FilmThicknessEquationEvidence F) :
    FilmThicknessEquationClosed F := by
  exact And.intro E.filmThicknessEquationValidClosed E.cavitationConditionClosed

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
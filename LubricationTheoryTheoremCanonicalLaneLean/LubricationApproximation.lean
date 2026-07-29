import LubricationTheoryTheoremCanonicalLaneLean.ReynoldsEquation

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LubricationApproximationPackage {R : ReynoldsEquationPackage} where
  aspectRatioSmall : Prop
  inertialTermsNeglected : Prop
  pressureGradientDominant : Prop
  thinFilmFlow : Prop

structure LubricationApproximationEvidence {R : ReynoldsEquationPackage}
    (L : LubricationApproximationPackage R) where
  aspectRatioSmallClosed : L.aspectRatioSmall
  inertialTermsNeglectedClosed : L.inertialTermsNeglected
  pressureGradientDominantClosed : L.pressureGradientDominant
  thinFilmFlowClosed : L.thinFilmFlow

def LubricationApproximationClosed {R : ReynoldsEquationPackage}
    (L : LubricationApproximationPackage R) : Prop :=
  L.aspectRatioSmall ∧ L.inertialTermsNeglected ∧
  L.pressureGradientDominant ∧ L.thinFilmFlow

theorem lubrication_approximation_closed_from_evidence
    {R : ReynoldsEquationPackage} (L : LubricationApproximationPackage R)
    (E : LubricationApproximationEvidence L) : LubricationApproximationClosed L := by
  exact And.intro E.aspectRatioSmallClosed
    (And.intro E.inertialTermsNeglectedClosed
      (And.intro E.pressureGradientDominantClosed E.thinFilmFlowClosed))

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
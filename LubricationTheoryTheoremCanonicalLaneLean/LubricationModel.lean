import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LubricationModel where
  filmThickness : ℝ
  viscosity : ℝ
  velocity : ℝ
  pressure : ℝ
  roughness : ℝ
  filmContinuity : Prop
  filmContinuityTerm : filmContinuity

structure LubricationEvidence (M : LubricationModel) where
  filmContinuityClosed : M.filmContinuity

def LubricationClosed (M : LubricationModel) : Prop :=
  M.filmContinuity

theorem lubrication_closed_from_evidence (M : LubricationModel) (E : LubricationEvidence M) :
    LubricationClosed M := by
  exact E.filmContinuityClosed

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
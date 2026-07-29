import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LubricationObject where
  filmThickness : ℝ
  pressure : ℝ → ℝ
  viscosity : ℝ
  velocity : ℝ
  load : ℝ
  surfaceRoughness : ℝ
  asperityContactModel : Prop
  reynoldsEquationSatisfied : Prop
  stribeckCurveValid : Prop
  conclusion : (filmThickness = 0 ∨ filmThickness > 0) ∧ load > 0

structure LubricationWitness where
  object : LubricationObject

def LubricationWitnessClosed (O : LubricationObject) : Prop :=
  O.conclusion

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse

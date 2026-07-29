import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LubricationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LubricationAdmittedObject where
  space : LubricationSpace
  reynoldsNumber : ℝ
  lubricationApproximationValid : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure LubricationEndgameState where
  object : LubricationAdmittedObject

def LubricationWitnessClosed (O : LubricationAdmittedObject) : Prop :=
  O.solutionExists

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
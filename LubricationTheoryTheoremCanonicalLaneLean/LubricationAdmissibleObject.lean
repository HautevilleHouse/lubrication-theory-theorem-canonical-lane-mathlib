import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LubricatedSurface where
  domain : Type
  topology : TopologicalSpace domain
  boundary : Set domain
  smoothStructure : Prop

structure LubricationAdmittedObject where
  surface : LubricatedSurface
  lubricantFlow : Prop
  reynoldsNumberSmall : Prop
  lubricationApproximationValid : Prop
  conclusion : lubricationApproximationValid

structure LubricationEndgameState where
  object : LubricationAdmittedObject

def LubricationWitnessClosed (O : LubricationAdmittedObject) : Prop :=
  O.lubricationApproximationValid

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LubricationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LubricationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
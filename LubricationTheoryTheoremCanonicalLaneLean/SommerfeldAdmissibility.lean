import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure SommerfeldAdmissibleObject where
  sectorGeometry : Type u
  filmThicknessDistribution : Type u
  halfSommerfeldCondition : Prop
  cavitationImplied : Prop
  conclusion : halfSommerfeldCondition ∧ cavitationImplied

structure SommerfeldAdmissibleClass where
  object : SommerfeldAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def SommerfeldAdmittedClosure (A : SommerfeldAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
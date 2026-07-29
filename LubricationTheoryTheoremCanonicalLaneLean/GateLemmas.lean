import LubricationTheoryTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
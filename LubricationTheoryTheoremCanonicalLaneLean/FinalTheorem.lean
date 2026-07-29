import LubricationTheoryTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

def ConstrainedLubricationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lubrication_endgame (A : AdmissibleClass) :
    ConstrainedLubricationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
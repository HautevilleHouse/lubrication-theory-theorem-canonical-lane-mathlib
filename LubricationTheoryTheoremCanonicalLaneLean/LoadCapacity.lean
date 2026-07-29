import canonicalLaneMathlib.AdmissibleClass
import LubricationTheoryTheoremCanonicalLaneLean.FilmThicknessEquation

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LoadCapacityPackage where
  pressureDistribution : Type
  loadCapacityFormula : Prop
  sommerfeldBoundaryCondition : Prop
  loadCapacityPositive : Prop

structure LoadCapacityEvidence (L : LoadCapacityPackage) where
  loadCapacityFormulaClosed : L.loadCapacityFormula
  sommerfeldBoundaryConditionClosed : L.sommerfeldBoundaryCondition
  loadCapacityPositiveClosed : L.loadCapacityPositive

def LoadCapacityClosed (L : LoadCapacityPackage) : Prop :=
  L.loadCapacityFormula ∧ L.sommerfeldBoundaryCondition ∧ L.loadCapacityPositive

theorem load_capacity_closed_from_evidence
    (L : LoadCapacityPackage) (E : LoadCapacityEvidence L) :
    LoadCapacityClosed L := by
  exact And.intro E.loadCapacityFormulaClosed
    (And.intro E.sommerfeldBoundaryConditionClosed E.loadCapacityPositiveClosed)

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
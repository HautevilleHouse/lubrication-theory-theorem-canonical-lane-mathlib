import canonicalLaneMathlib.AdmissibleClass

/-!
# Load Capacity Package

Defines the load-carrying capacity of a lubricated contact,
obtained by integrating the pressure field.
-/

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure LoadCapacityPackage where
  pressureField : Type u
  integrationDomain : Type v
  loadCapacity : Type w
  loadCapacityComputed : Prop
  loadBoundary : Prop

structure LoadCapacityEvidence (L : LoadCapacityPackage) where
  loadCapacityComputedClosed : L.loadCapacityComputed
  loadBoundaryClosed : L.loadBoundary

def LoadCapacityClosed (L : LoadCapacityPackage) : Prop :=
  L.loadCapacityComputed ∧ L.loadBoundary

theorem load_capacity_closed_from_evidence (L : LoadCapacityPackage)
    (E : LoadCapacityEvidence L) : LoadCapacityClosed L := by
  exact And.intro E.loadCapacityComputedClosed E.loadBoundaryClosed

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
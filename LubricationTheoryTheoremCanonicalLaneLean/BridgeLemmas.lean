import LubricationTheoryTheoremCanonicalLaneLean.LubricationTheoryObjects

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LubricationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure ElastohydrodynamicContactPackage where
  elasticDeformation : Prop
  pressureViscosityRelation : Prop
  filmShapeEquation : Prop
  contactPressureDistribution : Prop

def EHLContactClosed (E : ElastohydrodynamicContactPackage) : Prop :=
  E.elasticDeformation ∧ E.pressureViscosityRelation ∧ E.filmShapeEquation ∧ E.contactPressureDistribution

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
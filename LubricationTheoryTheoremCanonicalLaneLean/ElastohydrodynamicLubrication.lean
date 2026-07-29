import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure ElastohydrodynamicLubricationPackage where
  elasticDeformation : Type u
  filmThicknessEquation : Type v
  pressureViscosityRelation : Type w
  hertzianContact : Prop
  elasticDeformationCoupled : Prop
  pressureViscosityEffect : Prop
  filmThicknessClosedForm : Prop

structure ElastohydrodynamicLubricationEvidence (E : ElastohydrodynamicLubricationPackage) where
  hertzianContactClosed : E.hertzianContact
  elasticDeformationCoupledClosed : E.elasticDeformationCoupled
  pressureViscosityEffectClosed : E.pressureViscosityEffect
  filmThicknessClosedFormClosed : E.filmThicknessClosedForm

def ElastohydrodynamicLubricationClosed (E : ElastohydrodynamicLubricationPackage) : Prop :=
  E.hertzianContact ∧ E.elasticDeformationCoupled ∧ E.pressureViscosityEffect ∧ E.filmThicknessClosedForm

theorem elastohydrodynamic_lubrication_closed_from_evidence
    (E : ElastohydrodynamicLubricationPackage) (Ev : ElastohydrodynamicLubricationEvidence E) :
    ElastohydrodynamicLubricationClosed E := by
  exact And.intro Ev.hertzianContactClosed
    (And.intro Ev.elasticDeformationCoupledClosed
      (And.intro Ev.pressureViscosityEffectClosed Ev.filmThicknessClosedFormClosed))

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
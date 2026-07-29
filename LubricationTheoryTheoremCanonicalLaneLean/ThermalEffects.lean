import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure ThermalEffectsPackage where
  energyEquation : Prop
  viscosityTemperatureCoupling : Prop
  heatDissipation : Prop
  temperatureFieldRegularity : Prop

def ThermalEffectsClosed (T : ThermalEffectsPackage) : Prop :=
  T.energyEquation ∧ T.viscosityTemperatureCoupling ∧ T.heatDissipation ∧ T.temperatureFieldRegularity

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
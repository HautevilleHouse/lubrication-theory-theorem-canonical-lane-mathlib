import canonicalLaneMathlib.AdmissibleClass

/-!
# Thermal Effects Package

Incorporates thermal effects in lubrication, including
temperature distribution and viscosity-temperature relation.
-/

namespace HautevilleHouse
namespace LubricationTheoryTheoremCanonicalLaneLean

structure ThermalEffectsPackage where
  temperatureField : Type u
  viscosityTemperatureRelation : Type v
  energyEquation : Prop
  thermalBoundaryConditions : Prop

structure ThermalEffectsEvidence (T : ThermalEffectsPackage) where
  energyEquationClosed : T.energyEquation
  thermalBoundaryConditionsClosed : T.thermalBoundaryConditions

def ThermalEffectsClosed (T : ThermalEffectsPackage) : Prop :=
  T.energyEquation ∧ T.thermalBoundaryConditions

theorem thermal_effects_closed_from_evidence (T : ThermalEffectsPackage)
    (E : ThermalEffectsEvidence T) : ThermalEffectsClosed T := by
  exact And.intro E.energyEquationClosed E.thermalBoundaryConditionsClosed

end LubricationTheoryTheoremCanonicalLaneLean
end HautevilleHouse
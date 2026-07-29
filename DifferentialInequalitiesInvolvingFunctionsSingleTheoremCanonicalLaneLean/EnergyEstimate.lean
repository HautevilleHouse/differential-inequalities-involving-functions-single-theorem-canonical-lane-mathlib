import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure EnergyEstimatePackage where
  functionSpace : Type u
  norm : ℝ
  energyInequality : Prop
  coercivityConstant : ℝ
  energyInequalityClosed : energyInequality
  coercivityPositive : coercivityConstant > 0

def EnergyEstimateClosed (E : EnergyEstimatePackage) : Prop :=
  E.energyInequality ∧ (E.coercivityConstant > 0)

theorem energy_estimate_closed_from_evidence (E : EnergyEstimatePackage) : EnergyEstimateClosed E := by
  exact And.intro E.energyInequalityClosed E.coercivityPositive

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
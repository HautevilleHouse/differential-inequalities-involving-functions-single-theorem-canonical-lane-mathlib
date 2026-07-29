import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure EvolutionOperator where
  stateSpace : Type u
  time : ℝ → stateSpace → stateSpace
  semigroupProperty : Prop
  continuity : Prop
  semigroupClosed : semigroupProperty
  continuityClosed : continuity

structure InstabilityPacket (S : DifferentialInequalityStatement) where
  evolution : EvolutionOperator
  growthRate : ℝ
  instabilityCondition : Prop
  blowupTime : ℝ
  conditionPositive : growthRate > 0
  blowupFinite : blowupTime < ∞
  instabilityClosed : instabilityCondition

theorem instability_condition_holds
    (S : DifferentialInequalityStatement) (I : InstabilityPacket S) :
    I.instabilityCondition := I.instabilityClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
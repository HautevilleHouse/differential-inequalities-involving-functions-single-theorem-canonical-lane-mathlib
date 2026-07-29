import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.MaximumPrinciple

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure EndpointClassificationPackage {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    {S : SobolevEstimatePackage E} {H : HardyInequalityPackage E} {M : MaximumPrinciplePackage E}
    (Z : InequalityFunctionalPackage) where
  targetFunction : Type u
  inequalityBoundary : Prop
  optimalConditionReached : Prop
  endpointMatchesTheorem : Prop

structure EndpointClassificationEvidence {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    {S : SobolevEstimatePackage E} {H : HardyInequalityPackage E} {M : MaximumPrinciplePackage E}
    {Z : InequalityFunctionalPackage} (Epkg2 : EndpointClassificationPackage Z) where
  inequalityBoundaryClosed : Epkg2.inequalityBoundary
  optimalConditionReachedClosed : Epkg2.optimalConditionReached
  endpointMatchesTheoremClosed : Epkg2.endpointMatchesTheorem

def EndpointClassificationClosed {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    {S : SobolevEstimatePackage E} {H : HardyInequalityPackage E} {M : MaximumPrinciplePackage E}
    {Z : InequalityFunctionalPackage} (Epkg2 : EndpointClassificationPackage Z) : Prop :=
  Epkg2.inequalityBoundary ∧ Epkg2.optimalConditionReached ∧ Epkg2.endpointMatchesTheorem

theorem endpoint_classification_closed_from_evidence
    {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    {S : SobolevEstimatePackage E} {H : HardyInequalityPackage E} {M : MaximumPrinciplePackage E}
    {Z : InequalityFunctionalPackage} (Epkg2 : EndpointClassificationPackage Z)
    (Ev : EndpointClassificationEvidence Epkg2) : EndpointClassificationClosed Epkg2 := by
  exact And.intro Ev.inequalityBoundaryClosed (And.intro Ev.optimalConditionReachedClosed Ev.endpointMatchesTheoremClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
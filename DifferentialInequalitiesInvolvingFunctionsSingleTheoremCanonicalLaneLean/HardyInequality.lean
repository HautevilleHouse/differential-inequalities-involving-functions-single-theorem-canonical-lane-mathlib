import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.InequalityFunctional

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure HardyInequalityPackage {F : InequalityFunctionalPackage} (E : InequalityFunctionalEvidence F) where
  weightFunction : Type u
  hardyConstant : ℝ
  inequalityStated : Prop
  optimalConstantKnown : Prop

structure HardyInequalityEvidence {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    (H : HardyInequalityPackage E) where
  inequalityStatedClosed : H.inequalityStated
  optimalConstantKnownClosed : H.optimalConstantKnown

def HardyInequalityClosed {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    (H : HardyInequalityPackage E) : Prop :=
  H.inequalityStated ∧ H.optimalConstantKnown

theorem hardy_inequality_closed_from_evidence
    {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    (H : HardyInequalityPackage E) (Ev : HardyInequalityEvidence H) :
    HardyInequalityClosed H := by
  exact And.intro Ev.inequalityStatedClosed Ev.optimalConstantKnownClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure DifferentialInequalityCore where
  functionSpace : Type u
  inequalityType : Prop
  domain : Type v
  boundaryConditions : Prop
  smoothnessAssumptions : Prop
  comparisonPrinciple : Prop

structure DifferentialInequalityCoreEvidence (C : DifferentialInequalityCore) where
  inequalityTypeClosed : C.inequalityType
  boundaryConditionsClosed : C.boundaryConditions
  smoothnessAssumptionsClosed : C.smoothnessAssumptions
  comparisonPrincipleClosed : C.comparisonPrinciple

def DifferentialInequalityCoreClosed (C : DifferentialInequalityCore) : Prop :=
  C.inequalityType ∧ C.boundaryConditions ∧ C.smoothnessAssumptions ∧ C.comparisonPrinciple

theorem differential_inequality_core_closed_from_evidence
    (C : DifferentialInequalityCore) (E : DifferentialInequalityCoreEvidence C) :
    DifferentialInequalityCoreClosed C := by
  exact And.intro E.inequalityTypeClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.smoothnessAssumptionsClosed E.comparisonPrincipleClosed))

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse

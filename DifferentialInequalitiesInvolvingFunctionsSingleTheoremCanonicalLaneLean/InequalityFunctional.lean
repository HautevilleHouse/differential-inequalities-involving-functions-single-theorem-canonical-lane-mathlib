import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure InequalityFunctionalPackage where
  functionSpace : Type u
  differentialOperator : Type v
  inequalityForm : Prop
  boundaryCondition : Prop
  functionalSmoothness : Prop

structure InequalityFunctionalEvidence (F : InequalityFunctionalPackage) where
  inequalityFormClosed : F.inequalityForm
  boundaryConditionClosed : F.boundaryCondition
  functionalSmoothnessClosed : F.functionalSmoothness

def InequalityFunctionalClosed (F : InequalityFunctionalPackage) : Prop :=
  F.inequalityForm ∧ F.boundaryCondition ∧ F.functionalSmoothness

theorem inequality_functional_closed_from_evidence
    (F : InequalityFunctionalPackage) (E : InequalityFunctionalEvidence F) :
    InequalityFunctionalClosed F := by
  exact And.intro E.inequalityFormClosed (And.intro E.boundaryConditionClosed E.functionalSmoothnessClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
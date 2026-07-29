import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.DifferentialInequalityCore

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure MaximumPrinciplePackage (C : DifferentialInequalityCore) where
  weakMaximumPrinciple : Prop
  strongMaximumPrinciple : Prop
  hopfLemma : Prop
  boundaryMaximumPrinciple : Prop

structure MaximumPrincipleEvidence {C : DifferentialInequalityCore} (M : MaximumPrinciplePackage C) where
  weakMaximumPrincipleClosed : M.weakMaximumPrinciple
  strongMaximumPrincipleClosed : M.strongMaximumPrinciple
  hopfLemmaClosed : M.hopfLemma
  boundaryMaximumPrincipleClosed : M.boundaryMaximumPrinciple

def MaximumPrincipleClosed {C : DifferentialInequalityCore} (M : MaximumPrinciplePackage C) : Prop :=
  M.weakMaximumPrinciple ∧ M.strongMaximumPrinciple ∧ M.hopfLemma ∧ M.boundaryMaximumPrinciple

theorem maximum_principle_closed_from_evidence
    {C : DifferentialInequalityCore} (M : MaximumPrinciplePackage C)
    (E : MaximumPrincipleEvidence M) : MaximumPrincipleClosed M := by
  exact And.intro E.weakMaximumPrincipleClosed
    (And.intro E.strongMaximumPrincipleClosed
      (And.intro E.hopfLemmaClosed E.boundaryMaximumPrincipleClosed))

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse

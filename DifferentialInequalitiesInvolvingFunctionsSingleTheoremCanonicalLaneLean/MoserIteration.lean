import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.DifferentialInequalityCore

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure MoserIterationPackage (C : DifferentialInequalityCore) where
  deGiorgiNashMoser : Prop
  localBoundedness : Prop
  holderContinuity : Prop
  HarnackEstimate : Prop

structure MoserIterationEvidence {C : DifferentialInequalityCore} (M : MoserIterationPackage C) where
  deGiorgiNashMoserClosed : M.deGiorgiNashMoser
  localBoundednessClosed : M.localBoundedness
  holderContinuityClosed : M.holderContinuity
  HarnackEstimateClosed : M.HarnackEstimate

def MoserIterationClosed {C : DifferentialInequalityCore} (M : MoserIterationPackage C) : Prop :=
  M.deGiorgiNashMoser ∧ M.localBoundedness ∧ M.holderContinuity ∧ M.HarnackEstimate

theorem moser_iteration_closed_from_evidence
    {C : DifferentialInequalityCore} (M : MoserIterationPackage C)
    (E : MoserIterationEvidence M) : MoserIterationClosed M := by
  exact And.intro E.deGiorgiNashMoserClosed
    (And.intro E.localBoundednessClosed
      (And.intro E.holderContinuityClosed E.HarnackEstimateClosed))

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse

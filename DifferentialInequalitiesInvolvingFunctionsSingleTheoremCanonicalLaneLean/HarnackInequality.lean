import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.DifferentialInequalityCore

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure HarnackInequalityPackage (C : DifferentialInequalityCore) where
  ellipticHarnack : Prop
  parabolicHarnack : Prop
  liYauHarnack : Prop
  hamiltonHarnack : Prop
  harnackConstant : Prop

structure HarnackInequalityEvidence {C : DifferentialInequalityCore} (H : HarnackInequalityPackage C) where
  ellipticHarnackClosed : H.ellipticHarnack
  parabolicHarnackClosed : H.parabolicHarnack
  liYauHarnackClosed : H.liYauHarnack
  hamiltonHarnackClosed : H.hamiltonHarnack
  harnackConstantClosed : H.harnackConstant

def HarnackInequalityClosed {C : DifferentialInequalityCore} (H : HarnackInequalityPackage C) : Prop :=
  H.ellipticHarnack ∧ H.parabolicHarnack ∧ H.liYauHarnack ∧ H.hamiltonHarnack ∧ H.harnackConstant

theorem harnack_inequality_closed_from_evidence
    {C : DifferentialInequalityCore} (H : HarnackInequalityPackage C)
    (E : HarnackInequalityEvidence H) : HarnackInequalityClosed H := by
  exact And.intro E.ellipticHarnackClosed
    (And.intro E.parabolicHarnackClosed
      (And.intro E.liYauHarnackClosed
        (And.intro E.hamiltonHarnackClosed E.harnackConstantClosed)))

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse

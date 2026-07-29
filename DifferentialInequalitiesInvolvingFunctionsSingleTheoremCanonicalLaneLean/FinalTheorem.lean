import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

def ConstrainedDifferentialInequalityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_inequality_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialInequalityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
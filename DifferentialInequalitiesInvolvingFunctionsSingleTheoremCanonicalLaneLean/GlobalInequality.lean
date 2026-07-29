import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.DifferentialInequalityStatement

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure GlobalInequalityPackage {P : DifferentialInequalityPackage}
    (E : DifferentialInequalityEvidence P) where
  globalBound : Prop
  monotonicity : Prop
  globalBoundClosed : globalBound
  monotonicityClosed : monotonicity

def GlobalInequalityClosed {P : DifferentialInequalityPackage}
    {E : DifferentialInequalityEvidence P} (G : GlobalInequalityPackage E) : Prop :=
  G.globalBound ∧ G.monotonicity

theorem global_inequality_closed_from_evidence
    {P : DifferentialInequalityPackage} {E : DifferentialInequalityEvidence P}
    (G : GlobalInequalityPackage E) : GlobalInequalityClosed G := by
  exact And.intro G.globalBoundClosed G.monotonicityClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
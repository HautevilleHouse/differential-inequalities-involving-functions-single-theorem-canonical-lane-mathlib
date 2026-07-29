import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.GlobalInequality

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure SharpConstantPackage {P : DifferentialInequalityPackage}
    {E : DifferentialInequalityEvidence P}
    {G : GlobalInequalityPackage E} where
  bestConstant : ℝ
  attainability : Prop
  sharpInequality : Prop
  bestConstantDefined : bestConstant > 0
  attainabilityClosed : attainability
  sharpInequalityClosed : sharpInequality

def SharpConstantClosed {P : DifferentialInequalityPackage}
    {E : DifferentialInequalityEvidence P}
    {G : GlobalInequalityPackage E} (S : SharpConstantPackage G) : Prop :=
  S.sharpInequality ∧ S.attainability

theorem sharp_constant_closed_from_evidence
    {P : DifferentialInequalityPackage} {E : DifferentialInequalityEvidence P}
    {G : GlobalInequalityPackage E} (S : SharpConstantPackage G) :
    SharpConstantClosed S := by
  exact And.intro S.sharpInequalityClosed S.attainabilityClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
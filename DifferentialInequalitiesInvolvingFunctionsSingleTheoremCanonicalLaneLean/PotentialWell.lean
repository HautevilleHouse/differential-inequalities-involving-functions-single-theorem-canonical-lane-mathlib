import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure PotentialWellStructure (S : DifferentialInequalityStatement) where
  potential : ℝ → ℝ
  energyFunctional : (carrier → ℝ) → ℝ
  coercivity : Prop
  lowerBound : Prop
  coercivityClosed : coercivity
  lowerBoundClosed : lowerBound

def PotentialWellClosed (P : PotentialWellStructure S) : Prop :=
  P.coercivity ∧ P.lowerBound

theorem potential_well_closed (P : PotentialWellStructure S) : PotentialWellClosed P :=
  And.intro P.coercivityClosed P.lowerBoundClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
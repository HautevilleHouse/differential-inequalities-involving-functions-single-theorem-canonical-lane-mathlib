import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure HartreeInteraction where
  interactionKernel : ℝ → ℝ
  symmetry : Prop
  boundedness : Prop
  symmetryClosed : symmetry
  boundednessClosed : boundedness

structure HartreeTheoryPackage (S : DifferentialInequalityStatement) where
  interaction : HartreeInteraction
  equation : Prop
  solutionSet : Type u
  densityFunction : solutionSet → ℝ
  energyLowerBound : Prop
  equationClosed : equation
  energyLowerBoundClosed : energyLowerBound

theorem hartree_energy_lower_bound_holds
    (S : DifferentialInequalityStatement) (H : HartreeTheoryPackage S) :
    H.energyLowerBound := H.energyLowerBoundClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
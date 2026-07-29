import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.InequalityFunctional

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure SobolevEstimatePackage {F : InequalityFunctionalPackage} (E : InequalityFunctionalEvidence F) where
  sobolevNormDefined : Prop
  embeddingConstant : ℝ
  embeddingInequality : Prop
  compactEmbedding : Prop

structure SobolevEstimateEvidence {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    (S : SobolevEstimatePackage E) where
  sobolevNormDefinedClosed : S.sobolevNormDefined
  embeddingInequalityClosed : S.embeddingInequality
  compactEmbeddingClosed : S.compactEmbedding

def SobolevEstimateClosed {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    (S : SobolevEstimatePackage E) : Prop :=
  S.sobolevNormDefined ∧ S.embeddingInequality ∧ S.compactEmbedding

theorem sobolev_estimate_closed_from_evidence
    {F : InequalityFunctionalPackage} {E : InequalityFunctionalEvidence F}
    (S : SobolevEstimatePackage E) (Ev : SobolevEstimateEvidence S) :
    SobolevEstimateClosed S := by
  exact And.intro Ev.sobolevNormDefinedClosed (And.intro Ev.embeddingInequalityClosed Ev.compactEmbeddingClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
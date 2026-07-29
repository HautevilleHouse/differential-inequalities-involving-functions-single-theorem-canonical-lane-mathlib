import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.FunctionalInequalityPackage

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure SobolevEmbeddingPackage (P : FunctionalInequalityPackage) where
  sobolevSpace : Type u
  targetSpace : Type v
  embeddingConstant : ℝ
  embeddingInequality : Prop
  constantOptimal : Prop

structure SobolevEmbeddingEvidence {P : FunctionalInequalityPackage}
    (S : SobolevEmbeddingPackage P) where
  embeddingInequalityClosed : S.embeddingInequality
  constantOptimalClosed : S.constantOptimal

def SobolevEmbeddingClosed {P : FunctionalInequalityPackage}
    (S : SobolevEmbeddingPackage P) : Prop :=
  S.embeddingInequality ∧ S.constantOptimal

theorem sobolev_embedding_closed_from_evidence {P : FunctionalInequalityPackage}
    (S : SobolevEmbeddingPackage P) (E : SobolevEmbeddingEvidence S) :
    SobolevEmbeddingClosed S :=
  And.intro E.embeddingInequalityClosed E.constantOptimalClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
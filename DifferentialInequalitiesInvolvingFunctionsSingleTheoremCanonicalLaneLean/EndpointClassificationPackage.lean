import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.HeatFlowPackage

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure EndpointClassificationPackage (P : FunctionalInequalityPackage)
    (S : SobolevEmbeddingPackage P) (H : HeatFlowPackage P S) where
  targetInequality : Prop
  sharpConstant : ℝ
  extremalFunctions : Prop
  endpointMatched : Prop

structure EndpointClassificationEvidence {P : FunctionalInequalityPackage}
    {S : SobolevEmbeddingPackage P} {H : HeatFlowPackage P S}
    (E : EndpointClassificationPackage P S H) where
  targetInequalityClosed : E.targetInequality
  sharpConstantClosed : E.sharpConstant > 0
  extremalFunctionsClosed : E.extremalFunctions
  endpointMatchedClosed : E.endpointMatched

def EndpointClassificationClosed {P : FunctionalInequalityPackage}
    {S : SobolevEmbeddingPackage P} {H : HeatFlowPackage P S}
    (E : EndpointClassificationPackage P S H) : Prop :=
  E.targetInequality ∧ E.extremalFunctions ∧ E.endpointMatched

theorem endpoint_classification_closed_from_evidence
    {P : FunctionalInequalityPackage} {S : SobolevEmbeddingPackage P}
    {H : HeatFlowPackage P S} (Epkg : EndpointClassificationPackage P S H)
    (E : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg :=
  And.intro E.targetInequalityClosed
    (And.intro E.extremalFunctionsClosed E.endpointMatchedClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
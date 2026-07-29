import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean.SobolevEmbeddingPackage

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure HeatFlowPackage (P : FunctionalInequalityPackage)
    (S : SobolevEmbeddingPackage P) where
  evolutionOperator : Type u
  decayEstimate : Prop
  gradientFlowStructure : Prop
  entropyMonotonicity : Prop

structure HeatFlowEvidence {P : FunctionalInequalityPackage}
    {S : SobolevEmbeddingPackage P} (H : HeatFlowPackage P S) where
  decayEstimateClosed : H.decayEstimate
  gradientFlowStructureClosed : H.gradientFlowStructure
  entropyMonotonicityClosed : H.entropyMonotonicity

def HeatFlowClosed {P : FunctionalInequalityPackage}
    {S : SobolevEmbeddingPackage P} (H : HeatFlowPackage P S) : Prop :=
  H.decayEstimate ∧ H.gradientFlowStructure ∧ H.entropyMonotonicity

theorem heat_flow_closed_from_evidence {P : FunctionalInequalityPackage}
    {S : SobolevEmbeddingPackage P} (H : HeatFlowPackage P S)
    (E : HeatFlowEvidence H) : HeatFlowClosed H :=
  And.intro E.decayEstimateClosed
    (And.intro E.gradientFlowStructureClosed E.entropyMonotonicityClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure GeneRegulationNetworkPackage where
  micrornaNode : Prop
  targetMrnaNode : Prop
  transcriptionFactorNode : Prop
  regulatoryEdges : Prop
  feedbackLoops : Prop

structure GeneRegulationNetworkEvidence (G : GeneRegulationNetworkPackage) where
  micrornaNodeClosed : G.micrornaNode
  targetMrnaNodeClosed : G.targetMrnaNode
  transcriptionFactorNodeClosed : G.transcriptionFactorNode
  regulatoryEdgesClosed : G.regulatoryEdges
  feedbackLoopsClosed : G.feedbackLoops

def GeneRegulationNetworkClosed (G : GeneRegulationNetworkPackage) : Prop :=
  G.micrornaNode ∧ G.targetMrnaNode ∧ G.transcriptionFactorNode ∧
  G.regulatoryEdges ∧ G.feedbackLoops

theorem gene_regulation_network_closed_from_evidence (G : GeneRegulationNetworkPackage)
    (E : GeneRegulationNetworkEvidence G) : GeneRegulationNetworkClosed G := by
  exact And.intro E.micrornaNodeClosed
    (And.intro E.targetMrnaNodeClosed
      (And.intro E.transcriptionFactorNodeClosed
        (And.intro E.regulatoryEdgesClosed E.feedbackLoopsClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
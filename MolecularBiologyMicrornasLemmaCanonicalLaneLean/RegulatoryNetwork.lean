import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure RegulatoryNetworkPackage where
  geneExpressionData : Type u
  mirnaTargetInteractions : Prop
  pathwayInfluence : Prop
  feedbackLoops : Prop
  networkRobustness : Prop

structure RegulatoryNetworkEvidence (N : RegulatoryNetworkPackage) where
  mirnaTargetInteractionsClosed : N.mirnaTargetInteractions
  pathwayInfluenceClosed : N.pathwayInfluence
  feedbackLoopsClosed : N.feedbackLoops
  networkRobustnessClosed : N.networkRobustness

def RegulatoryNetworkClosed (N : RegulatoryNetworkPackage) : Prop :=
  N.mirnaTargetInteractions ∧ N.pathwayInfluence ∧ N.feedbackLoops ∧ N.networkRobustness

theorem regulatory_network_closed_from_evidence (N : RegulatoryNetworkPackage)
    (E : RegulatoryNetworkEvidence N) : RegulatoryNetworkClosed N := by
  exact And.intro E.mirnaTargetInteractionsClosed
    (And.intro E.pathwayInfluenceClosed
      (And.intro E.feedbackLoopsClosed E.networkRobustnessClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
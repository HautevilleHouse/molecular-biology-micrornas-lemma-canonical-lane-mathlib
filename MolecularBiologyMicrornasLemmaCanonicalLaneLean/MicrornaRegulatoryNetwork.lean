import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MicrornaRegulatoryNetworkPackage where
  geneTargets : Type u
  feedForwardLoops : Prop
  feedbackLoops : Prop
  combinatorialControl : Prop
  networkRobustness : Prop

structure MicrornaRegulatoryNetworkEvidence (N : MicrornaRegulatoryNetworkPackage) where
  feedForwardLoopsClosed : N.feedForwardLoops
  feedbackLoopsClosed : N.feedbackLoops
  combinatorialControlClosed : N.combinatorialControl
  networkRobustnessClosed : N.networkRobustness

def MicrornaRegulatoryNetworkClosed (N : MicrornaRegulatoryNetworkPackage) : Prop :=
  N.feedForwardLoops ∧ N.feedbackLoops ∧ N.combinatorialControl ∧ N.networkRobustness

theorem microrna_regulatory_network_closed_from_evidence
    (N : MicrornaRegulatoryNetworkPackage) (E : MicrornaRegulatoryNetworkEvidence N) :
    MicrornaRegulatoryNetworkClosed N := by
  exact And.intro E.feedForwardLoopsClosed
    (And.intro E.feedbackLoopsClosed
      (And.intro E.combinatorialControlClosed E.networkRobustnessClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
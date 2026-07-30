import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMicrornasLemmaCanonicalLaneLean.BridgeLemmas
import MolecularBiologyMicrornasLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

def ConstrainedMicrornasLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_micrornas_lemma_endgame (A : AdmissibleClass) :
    ConstrainedMicrornasLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
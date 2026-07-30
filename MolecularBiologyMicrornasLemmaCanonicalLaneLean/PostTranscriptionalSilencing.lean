import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure PostTranscriptionalSilencingPackage where
  rnaInterference : Prop
  translationalRepression : Prop
  decoyEffect : Prop

def silencingClosed (S : PostTranscriptionalSilencingPackage) : Prop :=
  S.rnaInterference ∧ S.translationalRepression ∧ S.decoyEffect

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
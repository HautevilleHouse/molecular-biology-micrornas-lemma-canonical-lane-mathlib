import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MirnaTargetPredictionPackage where
  seedMatch : Prop
  conservationScore : Prop
  freeEnergy : Prop

def predictionClosed (P : MirnaTargetPredictionPackage) : Prop :=
  P.seedMatch ∧ P.conservationScore ∧ P.freeEnergy

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
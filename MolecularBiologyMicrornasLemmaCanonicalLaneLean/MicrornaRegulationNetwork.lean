import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MicrornaRegulationNetwork where
  targetGenes : Nat
  bindingSites : Nat
  regulationFunction : String
  abundance : Prop

def networkClosed (N : MicrornaRegulationNetwork) : Prop :=
  N.abundance

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
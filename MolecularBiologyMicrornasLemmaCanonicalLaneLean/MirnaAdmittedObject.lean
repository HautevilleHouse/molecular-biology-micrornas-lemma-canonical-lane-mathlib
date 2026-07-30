import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MirnaAdmittedObject where
  mirnaSpace : MirnaSpace
  regulatedPathway : Prop
  functionalEffect : Prop
  experimentalEvidence : Prop
  conclusion : experimentalEvidence

def MirnaWitnessClosed (O : MirnaAdmittedObject) : Prop :=
  O.experimentalEvidence

structure MirnaSpace where
  sequence : String
  target : String
  expressionLevel : Nat

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
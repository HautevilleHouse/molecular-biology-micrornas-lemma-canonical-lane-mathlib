import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MicrornaTargetRegulationPackage where
  mrnaTarget : Type u
  micrornaSequence : Type v
  seedMatch : Prop
  translationalRepression : Prop
  mrnaDecay : Prop
  regulatoryNetwork : Prop

structure MicrornaTargetRegulationEvidence (P : MicrornaTargetRegulationPackage) where
  seedMatchClosed : P.seedMatch
  translationalRepressionClosed : P.translationalRepression
  mrnaDecayClosed : P.mrnaDecay
  regulatoryNetworkClosed : P.regulatoryNetwork

def MicrornaTargetRegulationClosed (P : MicrornaTargetRegulationPackage) : Prop :=
  P.seedMatch ∧ P.translationalRepression ∧ P.mrnaDecay ∧ P.regulatoryNetwork

theorem microrna_target_regulation_closed_from_evidence
    (P : MicrornaTargetRegulationPackage) (E : MicrornaTargetRegulationEvidence P) :
    MicrornaTargetRegulationClosed P := by
  exact And.intro E.seedMatchClosed
    (And.intro E.translationalRepressionClosed
      (And.intro E.mrnaDecayClosed E.regulatoryNetworkClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
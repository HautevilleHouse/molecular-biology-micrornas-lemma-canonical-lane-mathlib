import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure ViralMirnaManipulationPackage where
  viralMirnaEncoding : Prop
  hostMirnaDysregulation : Prop
  immuneEvasion : Prop
  latencyEstablishment : Prop
  oncogenicPotential : Prop

structure ViralMirnaManipulationEvidence (V : ViralMirnaManipulationPackage) where
  viralMirnaEncodingClosed : V.viralMirnaEncoding
  hostMirnaDysregulationClosed : V.hostMirnaDysregulation
  immuneEvasionClosed : V.immuneEvasion
  latencyEstablishmentClosed : V.latencyEstablishment
  oncogenicPotentialClosed : V.oncogenicPotential

def ViralMirnaManipulationClosed (V : ViralMirnaManipulationPackage) : Prop :=
  V.viralMirnaEncoding ∧ V.hostMirnaDysregulation ∧ V.immuneEvasion ∧ V.latencyEstablishment ∧ V.oncogenicPotential

theorem viral_mirna_manipulation_closed_from_evidence
    (V : ViralMirnaManipulationPackage) (E : ViralMirnaManipulationEvidence V) :
    ViralMirnaManipulationClosed V := by
  exact And.intro E.viralMirnaEncodingClosed
    (And.intro E.hostMirnaDysregulationClosed
      (And.intro E.immuneEvasionClosed
        (And.intro E.latencyEstablishmentClosed E.oncogenicPotentialClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
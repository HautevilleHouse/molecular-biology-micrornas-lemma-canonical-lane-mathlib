import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MirnaTargetRecognitionPackage where
  seedRegionMatch : Prop
  siteAccessibility : Prop
  targetMrdAccessibility : Prop
  seedComplementarity : Prop
  thermodynamicStability : Prop

structure MirnaTargetRecognitionEvidence (M : MirnaTargetRecognitionPackage) where
  seedRegionMatchClosed : M.seedRegionMatch
  siteAccessibilityClosed : M.siteAccessibility
  targetMrdAccessibilityClosed : M.targetMrdAccessibility
  seedComplementarityClosed : M.seedComplementarity
  thermodynamicStabilityClosed : M.thermodynamicStability

def MirnaTargetRecognitionClosed (M : MirnaTargetRecognitionPackage) : Prop :=
  M.seedRegionMatch ∧ M.siteAccessibility ∧ M.targetMrdAccessibility ∧ M.seedComplementarity ∧ M.thermodynamicStability

theorem mirna_target_recognition_closed_from_evidence
    (M : MirnaTargetRecognitionPackage) (E : MirnaTargetRecognitionEvidence M) :
    MirnaTargetRecognitionClosed M := by
  exact And.intro E.seedRegionMatchClosed
    (And.intro E.siteAccessibilityClosed
      (And.intro E.targetMrdAccessibilityClosed
        (And.intro E.seedComplementarityClosed E.thermodynamicStabilityClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
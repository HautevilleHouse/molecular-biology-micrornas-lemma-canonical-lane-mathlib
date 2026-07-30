import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure TargetRecognitionPackage where
  seedMatch : Prop
  compensatoryBinding : Prop
  auContent : Prop
  siteAccessibility : Prop

def TargetRecognitionClosed (T : TargetRecognitionPackage) : Prop :=
  T.seedMatch ∧ T.compensatoryBinding ∧ T.auContent ∧ T.siteAccessibility

structure TargetRecognitionEvidence (T : TargetRecognitionPackage) where
  seedMatchClosed : T.seedMatch
  compensatoryBindingClosed : T.compensatoryBinding
  auContentClosed : T.auContent
  siteAccessibilityClosed : T.siteAccessibility

theorem target_recognition_closed_from_evidence (T : TargetRecognitionPackage)
    (E : TargetRecognitionEvidence T) : TargetRecognitionClosed T := by
  exact And.intro E.seedMatchClosed
    (And.intro E.compensatoryBindingClosed
      (And.intro E.auContentClosed E.siteAccessibilityClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
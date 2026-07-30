import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure SeedMatchRecognitionPackage where
  seedRegionDefined : Prop
  complementarityCheck : Prop
  bindingAffinity : Float
  functionalSite : Prop

structure SeedMatchRecognitionEvidence (S : SeedMatchRecognitionPackage) where
  seedRegionDefinedClosed : S.seedRegionDefined
  complementarityCheckClosed : S.complementarityCheck
  bindingAffinityClosed : S.bindingAffinity ≤ -7.0
  functionalSiteClosed : S.functionalSite

def SeedMatchRecognitionClosed (S : SeedMatchRecognitionPackage) : Prop :=
  S.seedRegionDefined ∧ S.complementarityCheck ∧ S.bindingAffinity ≤ -7.0 ∧ S.functionalSite

theorem seed_match_recognition_closed_from_evidence
    (S : SeedMatchRecognitionPackage) (E : SeedMatchRecognitionEvidence S) :
    SeedMatchRecognitionClosed S := by
  exact And.intro E.seedRegionDefinedClosed
    (And.intro E.complementarityCheckClosed (And.intro E.bindingAffinityClosed E.functionalSiteClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
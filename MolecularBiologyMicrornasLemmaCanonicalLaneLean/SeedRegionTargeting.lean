import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure SeedRegionTargetingPackage where
  seedMatch : Prop
  compensatorySite : Prop
  targetSiteAccessibility : Prop
  mrnStructure : Prop
  effectiveBinding : Prop

structure SeedRegionTargetingEvidence (S : SeedRegionTargetingPackage) where
  seedMatchClosed : S.seedMatch
  compensatorySiteClosed : S.compensatorySite
  targetSiteAccessibilityClosed : S.targetSiteAccessibility
  mrnStructureClosed : S.mrnStructure
  effectiveBindingClosed : S.effectiveBinding

def SeedRegionTargetingClosed (S : SeedRegionTargetingPackage) : Prop :=
  S.seedMatch ∧ S.compensatorySite ∧ S.targetSiteAccessibility ∧
  S.mrnStructure ∧ S.effectiveBinding

theorem seed_region_targeting_closed_from_evidence (S : SeedRegionTargetingPackage)
    (E : SeedRegionTargetingEvidence S) : SeedRegionTargetingClosed S := by
  exact And.intro E.seedMatchClosed
    (And.intro E.compensatorySiteClosed
      (And.intro E.targetSiteAccessibilityClosed
        (And.intro E.mrnStructureClosed E.effectiveBindingClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
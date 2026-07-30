import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MicroRNATargetInteractionPackage where
  micrornaSequence : String
  targetMRNA : String
  bindingEnergy : Float
  seedMatch : Bool
  targetSiteConserved : Prop

structure MicroRNATargetInteractionEvidence (M : MicroRNATargetInteractionPackage) where
  bindingEnergyClosed : M.bindingEnergy ≤ -15.0
  seedMatchClosed : M.seedMatch
  targetSiteConservedClosed : M.targetSiteConserved

def MicroRNATargetInteractionClosed (M : MicroRNATargetInteractionPackage) : Prop :=
  M.bindingEnergy ≤ -15.0 ∧ M.seedMatch ∧ M.targetSiteConserved

theorem microRNA_target_interaction_closed_from_evidence
    (M : MicroRNATargetInteractionPackage) (E : MicroRNATargetInteractionEvidence M) :
    MicroRNATargetInteractionClosed M := by
  exact And.intro E.bindingEnergyClosed (And.intro E.seedMatchClosed E.targetSiteConservedClosed)

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
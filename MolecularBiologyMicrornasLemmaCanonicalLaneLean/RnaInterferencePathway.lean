import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure RnaInterferencePathwayPackage where
  dicerProcessing : Prop
  riscLoading : Prop
  mrnaTargetBinding : Prop
  translationalRepression : Prop
  mrnaCleavage : Prop

structure RnaInterferencePathwayEvidence (P : RnaInterferencePathwayPackage) where
  dicerProcessingClosed : P.dicerProcessing
  riscLoadingClosed : P.riscLoading
  mrnaTargetBindingClosed : P.mrnaTargetBinding
  translationalRepressionClosed : P.translationalRepression
  mrnaCleavageClosed : P.mrnaCleavage

def RnaInterferencePathwayClosed (P : RnaInterferencePathwayPackage) : Prop :=
  P.dicerProcessing ∧ P.riscLoading ∧ P.mrnaTargetBinding ∧
  P.translationalRepression ∧ P.mrnaCleavage

theorem rna_interference_pathway_closed_from_evidence (P : RnaInterferencePathwayPackage)
    (E : RnaInterferencePathwayEvidence P) : RnaInterferencePathwayClosed P := by
  exact And.intro E.dicerProcessingClosed
    (And.intro E.riscLoadingClosed
      (And.intro E.mrnaTargetBindingClosed
        (And.intro E.translationalRepressionClosed E.mrnaCleavageClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
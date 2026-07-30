import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure RISCFormationPackage where
  dicerProcessed : Prop
  agoLoaded : Prop
  strandSelectionComplete : Prop
  riscMature : Prop

structure RISCFormationEvidence (R : RISCFormationPackage) where
  dicerProcessedClosed : R.dicerProcessed
  agoLoadedClosed : R.agoLoaded
  strandSelectionCompleteClosed : R.strandSelectionComplete
  riscMatureClosed : R.riscMature

def RISCFormationClosed (R : RISCFormationPackage) : Prop :=
  R.dicerProcessed ∧ R.agoLoaded ∧ R.strandSelectionComplete ∧ R.riscMature

theorem risc_formation_closed_from_evidence
    (R : RISCFormationPackage) (E : RISCFormationEvidence R) : RISCFormationClosed R := by
  exact And.intro E.dicerProcessedClosed
    (And.intro E.agoLoadedClosed (And.intro E.strandSelectionCompleteClosed E.riscMatureClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
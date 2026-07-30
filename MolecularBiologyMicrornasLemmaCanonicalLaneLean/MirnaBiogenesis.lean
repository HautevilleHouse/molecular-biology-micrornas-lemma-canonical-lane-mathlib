import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MirnaBiogenesisPackage where
  primaryTranscript : Prop
  droshaProcessed : Prop
  exportinTransported : Prop
  dicerCleaved : Prop
  matureMirnaLoaded : Prop

structure MirnaBiogenesisEvidence (M : MirnaBiogenesisPackage) where
  primaryTranscriptClosed : M.primaryTranscript
  droshaProcessedClosed : M.droshaProcessed
  exportinTransportedClosed : M.exportinTransported
  dicerCleavedClosed : M.dicerCleaved
  matureMirnaLoadedClosed : M.matureMirnaLoaded

def MirnaBiogenesisClosed (M : MirnaBiogenesisPackage) : Prop :=
  M.primaryTranscript ∧ M.droshaProcessed ∧ M.exportinTransported ∧ M.dicerCleaved ∧ M.matureMirnaLoaded

theorem mirna_biogenesis_closed_from_evidence
    (M : MirnaBiogenesisPackage) (E : MirnaBiogenesisEvidence M) : MirnaBiogenesisClosed M := by
  exact And.intro E.primaryTranscriptClosed
    (And.intro E.droshaProcessedClosed
      (And.intro E.exportinTransportedClosed
        (And.intro E.dicerCleavedClosed E.matureMirnaLoadedClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
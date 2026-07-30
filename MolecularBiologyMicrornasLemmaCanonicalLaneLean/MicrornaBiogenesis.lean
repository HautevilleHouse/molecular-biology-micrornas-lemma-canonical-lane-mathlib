import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MicrornaBiogenesisPackage where
  primaryTranscript : Type u
  droshaProcessing : Prop
  exportin5Transport : Prop
  dicerProcessing : Prop
  riscLoading : Prop
  matureMicrorna : Prop

structure MicrornaBiogenesisEvidence (B : MicrornaBiogenesisPackage) where
  droshaProcessingClosed : B.droshaProcessing
  exportin5TransportClosed : B.exportin5Transport
  dicerProcessingClosed : B.dicerProcessing
  riscLoadingClosed : B.riscLoading
  matureMicrornaClosed : B.matureMicrorna

def MicrornaBiogenesisClosed (B : MicrornaBiogenesisPackage) : Prop :=
  B.droshaProcessing ∧ B.exportin5Transport ∧ B.dicerProcessing ∧ B.riscLoading ∧ B.matureMicrorna

theorem microrna_biogenesis_closed_from_evidence
    (B : MicrornaBiogenesisPackage) (E : MicrornaBiogenesisEvidence B) :
    MicrornaBiogenesisClosed B := by
  exact And.intro E.droshaProcessingClosed
    (And.intro E.exportin5TransportClosed
      (And.intro E.dicerProcessingClosed
        (And.intro E.riscLoadingClosed E.matureMicrornaClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
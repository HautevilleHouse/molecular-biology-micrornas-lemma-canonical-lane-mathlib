import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MirnaBiogenesisPathwayPackage where
  droshaProcessing : Prop
  exportinTransport : Prop
  dicerCleavage : Prop
  riscLoading : Prop

def biogenesisClosed (B : MirnaBiogenesisPathwayPackage) : Prop :=
  B.droshaProcessing ∧ B.exportinTransport ∧ B.dicerCleavage ∧ B.riscLoading

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
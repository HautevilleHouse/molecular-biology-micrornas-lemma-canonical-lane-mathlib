import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MirnaDiseaseAssociationPackage where
  expressionDysregulation : Prop
  targetPathway : Prop
  biomarkerPotential : Prop

def diseaseClosed (D : MirnaDiseaseAssociationPackage) : Prop :=
  D.expressionDysregulation ∧ D.targetPathway ∧ D.biomarkerPotential

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
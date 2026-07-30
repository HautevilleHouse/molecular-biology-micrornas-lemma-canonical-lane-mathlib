import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure DiseaseAssociationPackage where
  cancerRelated : Prop
  cardiovascularRelated : Prop
  neurologicalRelated : Prop
  biomarkerPotential : Prop

def DiseaseAssociationClosed (D : DiseaseAssociationPackage) : Prop :=
  D.cancerRelated ∧ D.cardiovascularRelated ∧ D.neurologicalRelated ∧ D.biomarkerPotential

structure DiseaseAssociationEvidence (D : DiseaseAssociationPackage) where
  cancerRelatedClosed : D.cancerRelated
  cardiovascularRelatedClosed : D.cardiovascularRelated
  neurologicalRelatedClosed : D.neurologicalRelated
  biomarkerPotentialClosed : D.biomarkerPotential

theorem disease_association_closed_from_evidence (D : DiseaseAssociationPackage)
    (E : DiseaseAssociationEvidence D) : DiseaseAssociationClosed D := by
  exact And.intro E.cancerRelatedClosed
    (And.intro E.cardiovascularRelatedClosed
      (And.intro E.neurologicalRelatedClosed E.biomarkerPotentialClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
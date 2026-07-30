import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure TherapeuticTargetingPackage where
  antagomirDesign : Prop
  mimaMimicTherapy : Prop
  deliveryVehicle : Prop
  offTargetEffects : Prop

def TherapeuticTargetingClosed (T : TherapeuticTargetingPackage) : Prop :=
  T.antagomirDesign ∧ T.mimaMimicTherapy ∧ T.deliveryVehicle ∧ T.offTargetEffects

structure TherapeuticTargetingEvidence (T : TherapeuticTargetingPackage) where
  antagomirDesignClosed : T.antagomirDesign
  mimaMimicTherapyClosed : T.mimaMimicTherapy
  deliveryVehicleClosed : T.deliveryVehicle
  offTargetEffectsClosed : T.offTargetEffects

theorem therapeutic_targeting_closed_from_evidence (T : TherapeuticTargetingPackage)
    (E : TherapeuticTargetingEvidence T) : TherapeuticTargetingClosed T := by
  exact And.intro E.antagomirDesignClosed
    (And.intro E.mimaMimicTherapyClosed
      (And.intro E.deliveryVehicleClosed E.offTargetEffectsClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
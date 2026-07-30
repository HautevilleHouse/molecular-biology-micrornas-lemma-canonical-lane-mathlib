import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure SirnaAnalogMechanismPackage where
  exogenousSirnaIntroduction : Prop
  riscLoadingCompetition : Prop
  mrnaCleavageOrBlocking : Prop
  offTargetEffects : Prop
  therapeuticEfficacy : Prop

structure SirnaAnalogMechanismEvidence (S : SirnaAnalogMechanismPackage) where
  exogenousSirnaIntroductionClosed : S.exogenousSirnaIntroduction
  riscLoadingCompetitionClosed : S.riscLoadingCompetition
  mrnaCleavageOrBlockingClosed : S.mrnaCleavageOrBlocking
  offTargetEffectsClosed : S.offTargetEffects
  therapeuticEfficacyClosed : S.therapeuticEfficacy

def SirnaAnalogMechanismClosed (S : SirnaAnalogMechanismPackage) : Prop :=
  S.exogenousSirnaIntroduction ∧ S.riscLoadingCompetition ∧ S.mrnaCleavageOrBlocking ∧ S.offTargetEffects ∧ S.therapeuticEfficacy

theorem sirna_analog_mechanism_closed_from_evidence
    (S : SirnaAnalogMechanismPackage) (E : SirnaAnalogMechanismEvidence S) :
    SirnaAnalogMechanismClosed S := by
  exact And.intro E.exogenousSirnaIntroductionClosed
    (And.intro E.riscLoadingCompetitionClosed
      (And.intro E.mrnaCleavageOrBlockingClosed
        (And.intro E.offTargetEffectsClosed E.therapeuticEfficacyClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
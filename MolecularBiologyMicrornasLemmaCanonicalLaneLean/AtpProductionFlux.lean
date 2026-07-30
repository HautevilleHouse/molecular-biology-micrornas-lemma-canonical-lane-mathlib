import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure AtpProductionFluxPackage where
  mitochondrialAtpSynthesisRate : Prop
  glycolyticFlux : Prop
  atpHydrolysisRate : Prop
  fluxBalanceCondition : Prop

structure AtpProductionFluxEvidence (A : AtpProductionFluxPackage) where
  mitochondrialAtpSynthesisRateClosed : A.mitochondrialAtpSynthesisRate
  glycolyticFluxClosed : A.glycolyticFlux
  atpHydrolysisRateClosed : A.atpHydrolysisRate
  fluxBalanceConditionClosed : A.fluxBalanceCondition

def AtpProductionFluxClosed (A : AtpProductionFluxPackage) : Prop :=
  A.mitochondrialAtpSynthesisRate ∧ A.glycolyticFlux ∧ A.atpHydrolysisRate ∧ A.fluxBalanceCondition

theorem atp_production_flux_closed_from_evidence (A : AtpProductionFluxPackage) (E : AtpProductionFluxEvidence A) :
    AtpProductionFluxClosed A := by
  exact And.intro E.mitochondrialAtpSynthesisRateClosed
    (And.intro E.glycolyticFluxClosed
      (And.intro E.atpHydrolysisRateClosed E.fluxBalanceConditionClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse
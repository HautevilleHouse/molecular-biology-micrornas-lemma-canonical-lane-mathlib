import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MRNAExpressionRegulationPackage where
  translationalRepression : Prop
  mrnaDeadenylation : Prop
  mrnaDecay : Prop
  expressionFoldChange : Float

structure MRNAExpressionRegulationEvidence (M : MRNAExpressionRegulationPackage) where
  translationalRepressionClosed : M.translationalRepression
  mrnaDeadenylationClosed : M.mrnaDeadenylation
  mrnaDecayClosed : M.mrnaDecay
  expressionFoldChangeClosed : M.expressionFoldChange ≤ 0.5

def MRNAExpressionRegulationClosed (M : MRNAExpressionRegulationPackage) : Prop :=
  M.translationalRepression ∧ M.mrnaDeadenylation ∧ M.mrnaDecay ∧ M.expressionFoldChange ≤ 0.5

theorem mrna_expression_regulation_closed_from_evidence
    (M : MRNAExpressionRegulationPackage) (E : MRNAExpressionRegulationEvidence M) :
    MRNAExpressionRegulationClosed M := by
  exact And.intro E.translationalRepressionClosed
    (And.intro E.mrnaDeadenylationClosed (And.intro E.mrnaDecayClosed E.expressionFoldChangeClosed))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse